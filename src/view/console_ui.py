import os
import sys
from time import strftime

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
            ["5", "Add New Planned Activity"],
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
                        self.modify_course_instance()

                    case "3":
                        self.Deallocate_Allocate_teacher()

                    case "4":
                        self.add_new_teaching_activity()

                    case "5":
                        self.create_planned_activity()

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

    def add_new_teaching_activity(self):
        print("--- Add New Teaching Activity ---")
        name = input("Enter activity name (default: Exercise): ") or "Exercise"
        factor = input("Enter activity factor: ")

        try:
            dto = self.controller.create_teaching_activity(name, factor)

            headers = ["Activity Name", "Factor"]
            data = [[dto.activity_name, dto.factor]]

            print("\n" + tabulate(data, headers=headers, tablefmt="fancy_grid"))
            input("Press enter to return to menu...")

        except Exception as e:
            print(f"\nSomething went wrong: {e}")
            input("Press Enter to continue...")

    def create_planned_activity(self):
        print("--- Add Planned Activity ---")
        teaching_activity_id = input("Enter teaching activity id: ")
        course_instance_id = input("Enter Course instance id: ")
        hours = input("Enter hours: ")

        try:
            dto = self.controller.create_planned_activity(
                teaching_activity_id, course_instance_id, hours
            )

            headers = [
                "Planned activity id",
                "Teaching activity id",
                "Course instance id",
                "Hours",
            ]
            data = [
                [
                    dto.planned_activity_id,
                    dto.teaching_activity_id,
                    dto.course_instance_id,
                    dto.planned_hours,
                ],
            ]

            print("\n" + tabulate(data, headers=headers, tablefmt="fancy_grid"))

        except Exception as e:
            print(f"\nSomething went wrong: {e}")
            input("Press Enter to continue...")

    def modify_course_instance(self):
        print("--- Modify Course Instance ---")
        current_year = strftime("%Y")
        year = input(f"Enter the year (default: {current_year}): ") or current_year
        self.display_course_instances(year)
        course_instance_id = input("Enter course instance ID: ")

        try:
            dto_before = self.controller.get_course_cost(course_instance_id)

            if not dto_before:
                print(f"Course with id {course_instance_id} not found")
                return

            increase = int(input("Number of students to add (default: 10): ") or 10)
            self.controller.update_student_count(course_instance_id, increase)
            dto_after = self.controller.get_course_cost(course_instance_id)

            headers = ["Metric", "Before", " ", "After"]
            data = [
                ["Students", dto_before.num_students, "->", dto_after.num_students],
                [
                    "Planned Cost",
                    f"{dto_before.planned_cost:,.2f}",
                    "->",
                    f"{dto_after.planned_cost:,.2f}",
                ],
                [
                    "Actual Cost",
                    f"{dto_before.actual_cost:,.2f}",
                    "->",
                    f"{dto_after.actual_cost:,.2f}",
                ],
            ]

            print("\n" + tabulate(data, headers=headers, tablefmt="fancy_grid"))
            print(
                "(Note: Looks weird but actual cost only counts for activities so there should be no change)"
            )

        except Exception as e:
            print(f"\nUpdate Failed: {e}")
            input("Press Enter to continue...")

    def Deallocate_Allocate_teacher(self):
        print("--- Allocate/Deallocate teachers ---")
        menu = [
            ["1", "Allocate"],
            ["2", "Deallocate"],
        ]

        while True:
            print(
                "\n" + tabulate(menu, headers=["Opt", "Action"], tablefmt="fancy_grid")
            )
            option = input("Enter option: ")
            try:
                if option == "1":
                    self.allocate_teacher()
                    input("Press Enter to continue...")
                    break
                elif option == "2":
                    self.deallocate_teacher()
                    input("Press Enter to continue...")
                    break
                else:
                    print("Invalid choice")
                    input("Press Enter to try again...")
            except Exception as e:
                print(f"[ERROR] {e}")
                input("Press Enter to continue...")

    def allocate_teacher(self):
        print("--- Allocate Teacher ---")
        employee_id = input("Enter employee id: ")
        planned_activity_id = input("Enter the Planned activity id: ")
        hours = input("Enter the amount of hours to allocate: ")

        dto = self.controller.allocate_employee_to_activity(
            employee_id, planned_activity_id, hours
        )

        if dto:
            details = self.controller.get_allocation_details(
                planned_activity_id, employee_id
            )

            if details:
                headers = ["Teacher", "Course", "Period", "Activity", "Allocated Hours"]
                data = [
                    [
                        details.employee_name,
                        details.course_code,
                        details.period,
                        details.activity_name,
                        details.hours,
                    ]
                ]
                print("\n" + tabulate(data, headers=headers, tablefmt="fancy_grid"))
            else:
                print("Allocation saved, but could not retrieve details.")
                input("\nPress Enter to continue...")

        else:
            print("Allocation failed.")
            input("\nPress Enter to continue...")

    def deallocate_teacher(self):
        print("--- Deallocate Activity ---")
        employee_id = input("Enter employee id: ")
        planned_activity_id = int(input("Enter activity id: "))

        self.controller.deallocate_employee(planned_activity_id, employee_id)
        print("Activity deallocated.")

    def show_course_costs(self):
        print("--- View Course Costs ---")
        current_year = strftime("%Y")
        year = input(f"Enter the year (default: {current_year}): ") or current_year
        self.display_course_instances(year)
        course_instance_id = input("Enter course instance ID: ")

        try:
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

        except Exception as e:
            print(f"Error fetching data: {e}")

        input("\nPress any key to return to menu...")

    def display_course_instances(self, year):
        courses = self.controller.get_course_instances(year)

        print(
            "\n"
            + tabulate(
                courses,
                headers=["Instance ID", "Course Code", "Period"],
                tablefmt="fancy_grid",
            )
        )
