from src.integration.school_dao import SchoolDAO


# Handles Transactions (Commit/Rollback) and Rules.
class Controller:
    def __init__(self, connection):
        self.connection = connection
        self.dao = SchoolDAO(connection)

    def get_course_cost(self, course_instance_id):
        return self.dao.read_course_cost(course_instance_id)
