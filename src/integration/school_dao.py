from src.integration import queries
from src.model.dto import (
    CourseCostDTO,
    StudentsActualCostDTO,
)  # Might need more later, we'll see
import random
import traceback


class SchoolDAO:
    def __init__(self, connection):
        self.connection = connection

    # CREATE

    # READ
    def read_course_cost(self, course_instance_id):
        cursor = self.connection.cursor()

        cursor.execute(queries.GET_COURSE_COST, [course_instance_id])
        row = cursor.fetchone()
        cursor.close()

        if row:
            return CourseCostDTO(
                course_code=row[0],
                course_instance_id=row[1],
                period=row[2],
                num_students=row[3],
                planned_cost=row[4],
                actual_cost=row[5],
            )

        return None

    def read_student_count(self, course_instance_id):
        cursor = self.connection.cursor()
        try:
            cursor.execute(queries.SHOW_STUDENTS_AND_PRICE, [course_instance_id])
        except Exception as e:
            print("🔥 SQL ERROR OCCURRED:")
            print(e)
            traceback.print_exc()
            raise
        row = cursor.fetchone()
        cursor.close()
        if row:
            return StudentsActualCostDTO(
                num_students=row[0],
                actual_cost=row[1],
            )
        else:
            print("Some error")

    # UPDATE
    def write_student_update(self, course_instance_id, increment=20):
        cursor = self.connection.cursor()
        cursor.execute(queries.SHOW_STUDENTS, [course_instance_id])
        current_students = cursor.fetchone()[0]

        # Get max allowed students
        cursor.execute(queries.GET_MAX_STUDENTS, [course_instance_id])
        max_students = cursor.fetchone()[0]

        if current_students + increment <= max_students:
            cursor.execute(
                queries.UPDATE_STUDENT_COUNT, [increment, course_instance_id]
            )
            self.write_new_actual_cost(course_instance_id)
        else:
            raise Exception(
                f"Cannot add {increment} students to course instance {course_instance_id}. "
                f"Limit is {max_students}, currently {current_students}."
            )
        cursor.close()

    def get_available_employees(self):
        cursor = self.connection.cursor()
        cursor.execute(queries.GET_SUITABLE_EMPLOYEES, ["P1"])
        rows_1 = cursor.fetchall()

        cursor.execute(queries.GET_SUITABLE_EMPLOYEES, ["P2"])
        rows_2 = cursor.fetchall()

        cursor.execute(queries.GET_SUITABLE_EMPLOYEES, ["P3"])
        rows_3 = cursor.fetchall()

        cursor.execute(queries.GET_SUITABLE_EMPLOYEES, ["P4"])
        rows_4 = cursor.fetchall()

        all_rows = rows_1 + rows_2 + rows_3 + rows_4
        cursor.close()
        return all_rows

    def write_new_actual_cost(self, course_instance_id):
        cursor = self.connection.cursor()
        cursor.execute(queries.GET_PLANNED_ACTIVITY_ROWS)

        planned_activity_rows = cursor.fetchall()
        for i in range(7):
            cursor.execute(
                queries.INSERT_PLANNED_ACTIVITY,
                [
                    planned_activity_rows[0][0] + 1 + i,
                    random.randint(1, 7),
                    course_instance_id,
                    random.randint(10, 20),
                ],
            )

        all_rows = self.get_available_employees()

        for i in range(7):
            cursor.execute(
                queries.INSERT_ALLOCATED_ACTIVITY,
                [
                    planned_activity_rows[0][0] + 1 + i,
                    all_rows[random.randint(1, len(all_rows) - 1)][0],
                    random.randint(10, 20),
                ],
            )
        cursor.close()

    # DELETE
    def deallocate_teacher_from_instance(self, planned_activity_id):
        cursor = self.connection.cursor()
        cursor.execute(queries.DEALLOCATE_EMPLOYEE, [planned_activity_id])
        cursor.close()

    def allocate_teacher_to_activity(self, employee_id, planned_activity_id):
        cursor = self.connection.cursor()
        available = False
        available_employees = self.get_available_employees()
        for id in available_employees:
            if employee_id == id[0]:
                available = True
        if available == True:
            cursor.execute(
                queries.ALLOCATE_EMPLOYEE, [employee_id, planned_activity_id]
            )
        else:
            raise Exception(
                f"Cannot add Employee with id{employee_id} to activity {planned_activity_id}. "
            )
        cursor.close()
