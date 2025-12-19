from src.integration.school_dao import SchoolDAO


class SchoolModel:
    def __init__(self, connection):
        self.dao = SchoolDAO(connection)

    def get_course_cost(self, course_instance_id):
        return self.dao.execute_operation(
            lambda: self.dao.read_course_cost(course_instance_id)
        )
