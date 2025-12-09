#
#   Read-only queries (we can use views)
#
GET_COURSE_COST = """
	SELECT course_code, course_instance_id, periods, num_students, planned_cost, actual_cost 
	FROM v_5_course_costs 
	WHERE course_instance_id = %s
"""


SHOW_STUDENTS_AND_PRICE = """
	SELECT num_students, actual_cost
	FROM v_5_course_costs
	WHERE course_instance_id = %s
"""

INSERT_PLANNED_ACTIVITY = """
INSERT INTO planned_activity (id, teaching_activity_id, course_instance_id, planned_hours)
OVERRIDING SYSTEM VALUE 
VALUES (%s, %s, %s, %s);
"""
INSERT_ALLOCATED_ACTIVITY = """
INSERT INTO allocated_activity (planned_activity_id, employee_id, allocated_hours) 
OVERRIDING SYSTEM VALUE
VALUES (%s, %s, %s);
"""

#
#   Transactional queries (these need locking so we gotta do joins I me thinks)
#

GET_SUITABLE_EMPLOYEES = """
	SELECT employee_id
	FROM allocated_activity
	GROUP BY employee_id
	HAVING COUNT(*) < 4;
"""

UPDATE_STUDENT_COUNT = """
	UPDATE course_instance 
	SET num_students = num_students + %s 
	WHERE id = %s
"""

GET_PLANNED_ACTIVITY_ROWS = """
	SELECT COUNT(*) FROM planned_activity;
"""
