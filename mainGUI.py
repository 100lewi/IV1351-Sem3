from src.controller.controller import Controller
from src.UserInterface.main_window import MainWindow
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
        connection = connect_with_bootstrap(DB_CONFIG)
        if connection is None:
            raise RuntimeError("Failed to establish database connection")
        connection.autocommit = False

        controller = Controller(connection, DB_CONFIG)
        app = MainWindow(controller)
        app.run()

    except Exception as e:
        # In a GUI app, this is mostly for fatal startup errors
        print(f"Fatal error: {e}")

    finally:
        if connection:
            connection.close()


if __name__ == "__main__":
    main()
