import sys
import os
from tabulate import tabulate


class ConsoleUI:
    def __init__(self, controller):
        self.controller = controller

    def _clear_screen(self):
        os.system("cls" if os.name == "nt" else "clear")

    def start(self):

        menu = [
            ["1", "View Course Costs"],
            ["2", "Modify a Course Instance"],
            ["3", "Modify Activity Allocation"],
            ["4", "Add New Teaching Activity"],
            ["9", "RESET DATABASE"],
            ["0", "Exit"],
        ]

        while True:
            print(
                "\n" + tabulate(menu, headers=["Opt", "Action"], tablefmt="fancy_grid")
            )

            choice = input("Select: ")

            try:
                match choice:
                    case "1":
                        self.show_course_costs()

                    case "2":
                        self.show_students_beforeafter_update()
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

    def show_students_beforeafter_update(self):
        print("--- Students Before Update ---")
        course_instance_id = input("Enter course instance ID: ")
        dto = self.controller.read_student_count_and_price(course_instance_id)
        if dto:
            data = [
                [
                    f"{dto.num_students:,.2f}",
                    f"{dto.actual_cost:,.2f}",
                ]
            ]
            headers = ["Number of Students", "Cost"]
            print("\n" + tabulate(data, headers=headers, tablefmt="fancy_grid"))
        else:
            print("Course Instance not found.")
            input("\nPress Enter to continue...")
        print("--- Students After Update ---")

        self.controller.update_student_count(course_instance_id)
        new_dto = self.controller.read_student_count_and_price(course_instance_id)
        if new_dto:
            data = [
                [
                    f"{new_dto.num_students:,.2f}",
                    f"{new_dto.actual_cost:,.2f}",
                ]
            ]
            headers = [
                "Number of students",
                "Actual cost",
            ]
            print("\n" + tabulate(data, headers=headers, tablefmt="fancy_grid"))
        else:
            print("Course Instance not found.")
            input("\nPress Enter to continue...")
        input("\nPress any key to return to menu...")

    def Deallocate_Allocate_teacher(self):
        print("--- Allocate/Deallocate teachers ---")
        menu = [
            ["1", "Deallocate"],
            ["2", "Allocate"],
        ]

        while True:
            print(
                "\n" + tabulate(menu, headers=["Opt", "Action"], tablefmt="fancy_grid")
            )
            option = input("Enter option: ")
            try:
                if option == "1":
                    # self.allocate_teacher()
                    input("Press Enter to continue...")
                    break
                elif option == "2":
                    # self.deallocate_teacher()
                    input("Press Enter to continue...")
                    break
                else:
                    print("Invalid choice")
                    input("Press Enter to try again...")
            except Exception as e:
                print(f"[ERROR] {e}")
                input("Press Enter to continue...")

    def allocate_teacher(planned_activity_id, employee_id):
        print("--- Allocate Teacher ---")
        planned_activity_id = input("Enter activity id: ")
        employee_id = input("Enter employee id: ")

    def show_course_costs(self):
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
