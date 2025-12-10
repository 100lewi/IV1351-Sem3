import psycopg
from src.controller.controller import Controller
from src.view.console_ui import ConsoleUI
from src.utils.db_setup import connect_with_bootstrap

DB_CONFIG = {
    "dbname": "group35_database",
    "user": "postgres",
    "password": "postgres",
    "host": "localhost",
}


def main():

    connection = None

    try:
        connection = connect_with_bootstrap(DB_CONFIG)  # type: ignore

        connection.autocommit = False

        controller = Controller(connection, DB_CONFIG)
        view = ConsoleUI(controller)

        view.start()

    except Exception as e:
        print(e)

    finally:
        if connection:
            connection.close()


if __name__ == "__main__":
    main()
