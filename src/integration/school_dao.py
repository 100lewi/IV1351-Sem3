from src.integration import queries
from src.model.dto import (
    AllocationDetailsDTO,
    CourseCostDTO,
    CourseInstanceDTO,
    EmployeeActivityDTO,
    PlannedActivityDTO,
    StudentCountDTO,
    TeachingActivityDTO,
)


class SchoolDAO:
    def __init__(self, connection):
        self.connection = connection

    def execute_operation(self, operation_function):
        try:
            result = operation_function()
            self.connection.commit()

            return result

        except Exception as e:
            self.connection.rollback()

            raise e

    # CREATE
    def create_activity_type(self, name, factor):
        cursor = self.connection.cursor()

        cursor.execute(queries.CREATE_ACTIVITY_TYPE, [name, factor])
        row = cursor.fetchone()
        cursor.close()

        if row:
            return TeachingActivityDTO(
                teaching_activity_id=row[0], activity_name=row[1], factor=row[2]
            )

    def create_planned_activity(self, teaching_activity_id, course_instance_id, hours):
        cursor = self.connection.cursor()

        cursor.execute(
            queries.INSERT_PLANNED_ACTIVITY,
            [teaching_activity_id, course_instance_id, hours],
        )
        row = cursor.fetchone()

        cursor.close()

        if row:
            return PlannedActivityDTO(
                planned_activity_id=row[0],
                teaching_activity_id=row[1],
                course_instance_id=row[2],
                planned_hours=row[3],
            )

    def create_allocated_activity(self, planned_activity_id, employee_id, hours):
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

    def read_allocation_details(self, planned_activity_id, employee_id):
        cursor = self.connection.cursor()

        cursor.execute(
            queries.GET_ALLOCATION_DETAILS, [planned_activity_id, employee_id]
        )
        row = cursor.fetchone()
        cursor.close()

        if row:
            return AllocationDetailsDTO(
                employee_name=row[0],
                course_code=row[1],
                period=row[2],
                activity_name=row[3],
                hours=row[4],
            )
        return None

    def read_course_instances(self, year):
        cursor = self.connection.cursor()

        cursor.execute(queries.GET_COURSE_INSTANCES_BY_YEAR, [f"{year} (%"])
        rows = cursor.fetchall()
        cursor.close()

        courses = []
        for row in rows:
            courses.append(
                CourseInstanceDTO(
                    course_instance_id=row[0], course_code=row[1], periods=row[2]
                )
            )

        return courses

    def read_employee_load_in_period(self, employee_id, period):
        cursor = self.connection.cursor()

        cursor.execute(queries.GET_EMPLOYEE_LOAD_IN_PERIOD, [employee_id, period])
        current_load = int(cursor.fetchone()[0])

        return current_load

    def read_max_load(self):
        cursor = self.connection.cursor()

        cursor.execute(queries.GET_SYSTEM_VARIABLE, ["employee_max_courses"])

        # Feel lke a DTO would be overkill since we're only passing 1 value
        max_load = int(cursor.fetchone()[0])
        cursor.close()

        return max_load

    def read_period_from_planned_activity(self, planned_activity_id):
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

    # DELETE
    def delete_teacher_from_instance(self, planned_activity_id, employee_id):
        cursor = self.connection.cursor()
        cursor.execute(queries.DEALLOCATE_EMPLOYEE, [planned_activity_id, employee_id])
        cursor.close()
