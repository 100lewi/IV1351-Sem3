from src.integration import queries
from src.model.dto import (
    CourseCostDTO,
    StudentCountDTO,
    EmployeeActivityDTO,
    ExcerciseViewDTO,
)
import random


class SchoolDAO:
    def __init__(self, connection):
        self.connection = connection

    # CREATE
    def allocate_employee_to_activity(self, planned_activity_id, employee_id, hours):
        cursor = self.connection.cursor()

        cursor.execute(
            queries.INSERT_ALLOCATED_ACTIVITY, [planned_activity_id, employee_id, hours]
        )

        row = cursor.fetchone()
        cursor.close()

        if row:
            return EmployeeActivityDTO(
                planned_activity_id=row[0], employee_id=row[1], allocated_hours=row[2]
            )

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

    def read_course_details_for_update(self, course_instance_id):
        cursor = self.connection.cursor()

        cursor.execute(queries.GET_COURSE_INSTANCE_FOR_UPDATE, [course_instance_id])
        row = cursor.fetchone()
        cursor.close()

        if row:
            return StudentCountDTO(
                id=row[0], current_students=row[1], max_students=row[2]
            )

        return None

    def get_employee_load_in_period(self, employee_id, period):
        cursor = self.connection.cursor()

        cursor.execute(queries.GET_EMPLOYEE_LOAD_IN_PERIOD, [employee_id, period])
        current_load = int(cursor.fetchone()[0])

        return current_load

    def get_max_load(self):
        cursor = self.connection.cursor()

        cursor.execute(queries.GET_SYSTEM_VARIABLE, ["employee_max_courses"])

        # Feel lke a DTO would be overkill since we're only passing 1 value
        max_load = int(cursor.fetchone()[0])
        cursor.close()

        return max_load

    def get_period_from_planned_activity(self, planned_activity_id):
        cursor = self.connection.cursor()

        cursor.execute(
            queries.GET_PERIOD_FROM_PLANNED_ACTIVITY,
            [planned_activity_id],
        )
        period = cursor.fetchone()[0]
        cursor.close()

        return period

    # UPDATE
    def update_student_count(self, course_instance_id, new_count):
        cursor = self.connection.cursor()

        cursor.execute(queries.UPDATE_STUDENT_COUNT, [new_count, course_instance_id])
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

    # DELETE
    def deallocate_teacher_from_instance(self, planned_activity_id, employee_id):
        cursor = self.connection.cursor()
        cursor.execute(queries.DEALLOCATE_EMPLOYEE, [planned_activity_id, employee_id])
        cursor.close()

    def allocate_teacher_to_activity(self, planned_activity_id, employee_id, hours):
        cursor = self.connection.cursor()

        cursor.execute(
            queries.INSERT_ALLOCATED_ACTIVITY, [planned_activity_id, employee_id, hours]
        )

        row = cursor.fetchone()
        cursor.close()

        if row:
            return EmployeeActivityDTO(
                planned_activity_id=row[0], employee_id=row[1], allocated_hours=row[2]
            )

        return None

    def add_excercise(self, course_instance_id, employee_id):
        cursor = self.connection.cursor()
        hours = random.randint(20, 25)
        hours = random.randint(20, 25)
        cursor.execute(queries.INSERT_EXCERCISE)

        # Create id for planned activity
        cursor.execute(queries.GET_PLANNED_ACTIVITY_ROWS)
        last_row = cursor.fetchone()
        last_id = last_row[0]

        new_id = last_id + 1

        # make a planned activity with excercise
        cursor.execute(
            queries.INSERT_EXCERCISE_INTO_PLANNED_ACTIVITY,
            [new_id, course_instance_id, hours],
        )
        # Allocate the planned activity
        cursor.execute(
            queries.INSERT_EXCERCISE_INTO_ALLOCATED_ACTIVITY,
            [new_id, employee_id, hours],
        )
        # Create the table with excercise
        cursor.execute(queries.CREATE_EXCERCISE_VIEW, [new_id])
        row = cursor.fetchone()
        if row:
            return ExcerciseViewDTO(
                course_instance_id=row[0],
                study_period=row[1],
                teaching_activity=row[2],
                employee_id=row[3],
                allocated_hours=row[4],
            )
