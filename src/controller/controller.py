import psycopg
from src.integration.school_dao import SchoolDAO
from src.utils.db_setup import reset_db_data, reset_db_schema


# Handles Transactions (Commit/Rollback) and Rules.
class Controller:
    def __init__(self, connection, db_config):
        self.connection = connection
        self.db_config = db_config
        self.dao = SchoolDAO(connection)

    def get_course_cost(self, course_instance_id):
        try:
            result = self.dao.read_course_cost(course_instance_id)
            self.connection.commit()

            return result

        except Exception as e:
            self.connection.rollback()
            raise e

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

    def deallocate_employee(self, planned_activity_id):
        return self.dao.deallocate_teacher_from_instance(planned_activity_id)

    def allocate_employee(self, course_instance_id, employee_id):
        return self.dao.allocate_teacher_to_activity(course_instance_id, employee_id)

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
