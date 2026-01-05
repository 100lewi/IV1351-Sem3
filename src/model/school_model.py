from src.integration.school_dao import SchoolDAO


class SchoolModel:
    def __init__(self, connection):
        self.dao = SchoolDAO(connection)

    def allocate_employee_to_activity(self, employee_id, planned_activity_id, hours):
        def transaction_logic():
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

            return new_activity

        return self.dao.execute_operation(transaction_logic)

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

    def deallocate_employee(self, planned_activity_id, employee_id):
        return self.dao.execute_operation(
            lambda: self.dao.delete_teacher_from_instance(
                planned_activity_id, employee_id
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

    def get_course_instances(self, year):
        return self.dao.execute_operation(lambda: self.dao.read_course_instances(year))

    def update_student_count(self, course_instance_id, increment):
        def transaction_logic():
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

            return new_total

        return self.dao.execute_operation(transaction_logic)
