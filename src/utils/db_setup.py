import os
import sys
import psycopg


def connect_with_bootstrap(db_config):
    try:
        connection = psycopg.connect(**db_config)
        return connection

    except psycopg.OperationalError as e:
        if "does not exist" in str(e):
            print(f"\nDatabase '{db_config["dbname"]}' was not found.")
            confirm = input("Would you like to build and populate it now? (y/n): ")

            if confirm.lower() == "y":
                try:
                    create_db(db_config)
                    reset_db_schema(db_config)
                    reset_db_data(db_config)

                    return psycopg.connect(**db_config)
                except Exception as setup_error:
                    print(f"Setup failed: {setup_error}")

            else:
                sys.exit(0)
        else:
            raise e


def create_db(config):

    target_db_name = config["dbname"]
    system_db_config = config.copy()
    system_db_config["dbname"] = "postgres"
    connection = None

    try:
        connection = psycopg.connect(**system_db_config, autocommit=True)
        cursor = connection.cursor()

        cursor.execute("SELECT 1 FROM pg_database WHERE datname = %s", [target_db_name])
        exists = cursor.fetchone()

        if not exists:
            print(f"Database '{target_db_name}' not found")
            cursor.execute(f'CREATE DATABASE "{target_db_name}"')  # type: ignore

    except Exception as e:
        print(f"Bootstrap failed: {e}")
        sys.exit(1)

    finally:
        if connection:
            connection.close()


def wrong_db_check(config):
    if config["dbname"] in ["postgres", "template1"]:
        print("Please don't mess with 'postgres' or 'template1' databases")
        sys.exit(1)


def run_sql_file(cursor, filepath):
    if not os.path.exists(filepath):
        print(f"Filepath not found {filepath}")
        return

    print(f"	Executing {filepath}...")

    with open(filepath, "r") as sql_file:
        cursor.execute(sql_file.read())


def reset_db_schema(config):
    wrong_db_check(config)

    print("\nRebuilding Database Schema...")

    try:
        with psycopg.connect(**config, autocommit=False) as connection:
            with connection.cursor() as cursor:
                cursor.execute("DROP SCHEMA IF EXISTS public CASCADE;")
                cursor.execute("CREATE SCHEMA public;")

                cursor.execute("GRANT ALL ON SCHEMA public TO postgres;")
                cursor.execute("GRANT ALL ON SCHEMA public TO public;")

                run_sql_file(cursor, "sql/create_database.sql")
                run_sql_file(cursor, "sql/create_views.sql")
                run_sql_file(cursor, "sql/create_indices.sql")

            connection.commit()
            print("Schema Rebuilt")

    except Exception as e:
        print(f"Schema Reset failed: {e}")
        sys.exit(1)


def reset_db_data(config):
    wrong_db_check(config)

    print("\nResetting data...")

    try:
        with psycopg.connect(**config, autocommit=False) as connection:
            with connection.cursor() as cursor:
                print("	Clearing old data...")
                cursor.execute(
                    """
                    DO $$ DECLARE
                        r RECORD;
                    BEGIN
                        FOR r IN (SELECT tablename FROM pg_tables WHERE schemaname = 'public') LOOP
                            EXECUTE 'TRUNCATE TABLE ' || quote_ident(r.tablename) || ' CASCADE';
                        END LOOP;
                    END $$;
                """
                )

                print("	Inserting new data...")
                run_sql_file(cursor, "sql/insert_data.sql")

                connection.commit()
                print("Data reset complete")

    except Exception as e:
        print(f"Data reset failed: {e}")
        if connection:
            connection.rollback()
