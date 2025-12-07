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
        return self.dao.read_course_cost(course_instance_id)

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
