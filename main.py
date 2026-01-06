import argparse

from src.controller.controller import Controller
from src.UserInterface.main_window import MainWindow
from src.utils.db_setup import connect_with_bootstrap
from src.view.console_ui import ConsoleUI

DB_CONFIG = {
    "dbname": "group35_database",
    "user": "postgres",
    "password": "postgres",
    "host": "localhost",
}


def main(mode):
    connection = None

    try:
        connection = connect_with_bootstrap(DB_CONFIG)  # type: ignore

        connection.autocommit = False  # type: ignore

        controller = Controller(connection, DB_CONFIG)

        if mode == "gui":
            print("Launching Graphical Interface...")
            app = MainWindow(controller)
            app.run()
        else:
            print("Launching Console Interface...")
            view = ConsoleUI(controller)
            view.start()

    except Exception as e:
        print(e)

    finally:
        if connection:
            connection.close()


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Run Group 35 Application")

    group = parser.add_mutually_exclusive_group(required=True)
    group.add_argument("--gui", action="store_true", help="Launch the GUI version")
    group.add_argument("--cli", action="store_true", help="Launch the Console version")

    args = parser.parse_args()

    if args.cli:
        main(mode="cli")
    else:
        main(mode="gui")

