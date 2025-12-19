from src.integration.school_dao import SchoolDAO


class SchoolModel:
    def __init__(self, connection):
        self.dao = SchoolDAO(connection)

    def create_teaching_activity(self, activity_name, factor):
        return self.dao.execute_operation(
            lambda: self.dao.create_activity_type(activity_name, factor)
        )

    def create_planned_activity(self, teaching_activity_id, course_instance_id, hours):
        return self.dao.execute_operation(
            lambda: self.dao.create_planned_activity(
                teaching_activity_id, course_instance_id, hours
            )
        )

    def get_allocation_details(self, planned_activity_id, employee_id):
        return self.dao.execute_operation(
            lambda: self.dao.read_allocation_details(planned_activity_id, employee_id)
        )

    def get_course_cost(self, course_instance_id):
        return self.dao.execute_operation(
            lambda: self.dao.read_course_cost(course_instance_id)
        )
