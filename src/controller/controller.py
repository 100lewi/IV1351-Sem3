import psycopg

from src.model.school_model import SchoolModel
from src.utils.db_setup import reset_db_data, reset_db_schema


class Controller:
    def __init__(self, connection, db_config):
        self.connection = connection
        self.db_config = db_config
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

    def get_course_instances(self, year):
        return self.model.get_course_instances(year)

    def update_student_count(self, course_instance_id, increment):
        return self.model.update_student_count(course_instance_id, increment)

    def deallocate_employee(self, planned_activity_id, employee_id):
        return self.model.deallocate_employee(planned_activity_id, employee_id)
    
    def allocate_employee_to_activity(self, employee_id, planned_activity_id, hours):
        return self.model.allocate_employee_to_activity(
            employee_id, planned_activity_id, hours
        )

    def reset_db(self):
        print("\nInitializing database reset")
        self.connection.close()

        try:
            reset_db_schema(self.db_config)
            reset_db_data(self.db_config)

            self.connection = psycopg.connect(**self.db_config)
            self.connection.autocommit = False

            self.model.dao.connection = self.connection

        except Exception as e:
            print(f"Fatal Error during reset: {e}")
            raise e
