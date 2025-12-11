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
                        self.Deallocate_Allocate_teacher()
                    case "4":
                        self.allocate_excercise()
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
        print("--- Modify Course Instance ---")
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
        course_instance_id = input("Enter course instance id: ")
        employee_id = input("Enter employee id: ")
        dto = self.controller.allocate_employee(course_instance_id, employee_id)
        if dto:
            data = [
                [
                    f"{dto.employee_id:,.2f}",
                    f"{dto.planned_activity_id:,.2f}",
                    f"{dto.allocated_hours:,.2f}",
                ]
            ]
            headers = [
                "Employee Id",
                "Planned Activity Id",
                "Allocated Hours",
            ]
            print("\n" + tabulate(data, headers=headers, tablefmt="fancy_grid"))
        else:
            print("Course Instance not found.")
            input("\nPress Enter to continue...")

    def deallocate_teacher(self):
        print("--- Deallocate Activity ---")
        planned_activity_id = int(input("Enter activity id: "))
        self.controller.deallocate_employee(planned_activity_id)
        print("Activity deallocated.")

    def allocate_excercise(self):
        print("--- Allocate Excercise ---")
        course_instance_id = input("Enter course instance id: ")
        employee_id = input("Enter employee id: ")
        dto = self.controller.allocate_excercise(course_instance_id, employee_id)
        if dto:
            data = [
                [
                    f"{dto.course_instance_id:,.2f}",
                    dto.study_period,
                    dto.teaching_activity,
                    f"{dto.employee_id:,.2f}",
                    f"{dto.allocated_hours:,.2f}",
                ]
            ]
            headers = [
                "Instance ID",
                "Period",
                "Activity name",
                "Employee ID",
                "Allocated Hours",
            ]
            print("\n" + tabulate(data, headers=headers, tablefmt="fancy_grid"))
        else:
            print("Course Instance not found.")
            input("\nPress Enter to continue...")

    def show_course_costs(self):
        print("--- View Course Costs ---")
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
