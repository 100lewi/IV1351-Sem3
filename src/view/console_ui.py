import sys
import os
from tabulate import tabulate


class ConsoleUI:
    def __init__(self, controller):
        self.controller = controller

    def _clear_screen(self):
        os.system("cls" if os.name == "nt" else "clear")

    def start(self):
        print("Hello World!")

        menu = [
            ["1", "View Course Costs"],
            ["2", "Modify a Course Instance"],
            ["3", "Modify Activity Allocation"],
            ["4", "Add New Teaching Activity"],
            ["9", "RESET DATABASE"],
            ["0", "Exit"],
        ]

        while True:
            self._clear_screen()

            print(
                "\n" + tabulate(menu, headers=["Opt", "Action"], tablefmt="fancy_grid")
            )

            choice = input("Select: ")

            try:
                match choice:
                    case "1":
                        self.show_course_costs()

                    case "2":
                        print("not implemented")

                    case "3":
                        print("not implemented")

                    case "4":
                        print("not implemented")

                    case "9":
                        confirm = input(
                            "Are you sure you want to Reset the Database? (y/n): "
                        )
                        if confirm.lower() == "y":
                            self.controller.reset_db()
                            input("Press Enter to continue...")

                    case "0":
                        sys.exit()

                    case _:
                        print("invalid choice")
                        input("Press Enter to try again...")

            except Exception as e:
                print(f"[ERROR] {e}")

    def show_course_costs(self):
        self._clear_screen()
        print("--- View Course Costs ---")

        course_instance_id = input("Enter course instance ID: ")

        dto = self.controller.get_course_cost(course_instance_id)

        if dto:
            data = [
                [
                    dto.course_code,
                    dto.course_instance_id,
                    dto.period,
                    dto.num_students,
                    f"{dto.planned_cost:,.2f}",
                    f"{dto.actual_cost:,.2f}",
                ]
            ]
            headers = [
                "Course Code",
                "Instance ID",
                "Period",
                "Students",
                "Planned Cost",
                "Actual Cost",
            ]
            print("\n" + tabulate(data, headers=headers, tablefmt="fancy_grid"))
        else:
            print("Course Instance not found.")
            input("\nPress Enter to continue...")

        input("\nPress any key to return to menu...")
