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
            return self.dao.read_course_cost(course_instance_id)

        except Exception as e:
            raise e

    def read_student_count_and_price(self, course_instance_id):
        return self.dao.read_student_count(course_instance_id)

    def update_student_count(self, course_instance_id):
        return self.dao.write_student_update(course_instance_id)

    def deallocate_employee(self, planned_activity_id):
        return self.dao.deallocate_teacher_from_instance(planned_activity_id)

    def allocate_employee(self, planned_activity_id, employee_id):
        return self.dao.allocate_teacher_to_activity(planned_activity_id, employee_id)

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
