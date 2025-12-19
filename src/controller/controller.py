import psycopg

from src.integration.school_dao import SchoolDAO
from src.model.school_model import SchoolModel
from src.utils.db_setup import reset_db_data, reset_db_schema


# Handles Transactions (Commit/Rollback) and Rules.
class Controller:
    def __init__(self, connection, db_config):
        self.connection = connection
        self.db_config = db_config
        self.dao = SchoolDAO(connection)
        self.model = SchoolModel(connection)

    def create_teaching_activity(self, name, factor):
        return self.model.create_teaching_activity(name, factor)

    def create_planned_activity(self, teaching_activity_id, course_instance_id, hours):
        return self.model.create_planned_activity(
            teaching_activity_id, course_instance_id, hours
        )

    def get_allocation_details(self, planned_activity_id, employee_id):
        return self.model.get_allocation_details(planned_activity_id, employee_id)

    def get_course_cost(self, course_instance_id):
        return self.model.get_course_cost(course_instance_id)

    def update_student_count(self, course_instance_id, increment):
        try:
            course_data = self.dao.read_course_details_for_update(course_instance_id)

            if not course_data:
                raise Exception(f"Course instance {course_instance_id} not found")

            limit = course_data.max_students
            new_total = course_data.current_students + increment

            if new_total > limit:
                raise Exception(
                    f"Cannot add {increment} students. Result {new_total} exceeds limit of {limit} students"
                )

            self.dao.update_student_count(course_instance_id, new_total)
            self.connection.commit()

        except Exception as e:
            self.connection.rollback()
            raise e

    def deallocate_employee(self, planned_activity_id, employee_id):
        try:
            self.dao.delete_teacher_from_instance(planned_activity_id, employee_id)
            self.connection.commit()

        except Exception as e:
            self.connection.rollback()
            raise e

    def allocate_employee_to_activity(self, employee_id, planned_activity_id, hours):
        try:
            period = self.dao.read_period_from_planned_activity(planned_activity_id)

            current_employee_load = self.dao.read_employee_load_in_period(
                employee_id, period
            )

            max_load_per_period = self.dao.read_max_load()

            if current_employee_load >= max_load_per_period:
                raise Exception(
                    f"Teacher {employee_id} is already in {current_employee_load} courses for this period. Limit is {max_load_per_period}."
                )

            new_activity = self.dao.create_allocated_activity(
                planned_activity_id, employee_id, hours
            )

            self.connection.commit()

            return new_activity

        except Exception as e:
            self.connection.rollback()
            raise e

    def reset_db(self):
        print("\nInitializing database reset")
        self.connection.close()

        try:
            reset_db_schema(self.db_config)
            reset_db_data(self.db_config)

            self.connection = psycopg.connect(**self.db_config)
            self.connection.autocommit = False

            self.dao.connection = self.connection

        except Exception as e:
            print(f"Fatal Error during reset: {e}")
            raise e
