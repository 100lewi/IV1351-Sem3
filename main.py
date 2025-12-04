import psycopg
from src.controller.controller import Controller
from src.view.console_ui import ConsoleUI

DB_CONFIG = {
    "dbname": "project_database",
    "user": "postgres",
    "password": "postgres",
    "host": "localhost",
}


def main():
    connection = None

    try:
        connection = psycopg.connect(**DB_CONFIG)  # type: ignore

        connection.autocommit = False

        controller = Controller(connection)
        view = ConsoleUI(controller)

        view.start()

    except Exception as e:
        print(e)

    finally:
        if connection:
            connection.close()


if __name__ == "__main__":
    main()
