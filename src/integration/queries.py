#
#   Read-only queries (we can use views)
#
GET_COURSE_COST = """
	SELECT course_code, course_instance_id, periods, num_students, planned_cost, actual_cost 
	FROM v_5_course_costs 
	WHERE course_instance_id = %s
"""


#
#   Transactional queries (these need locking so we gotta do joins I me thinks)
#

UPDATE_STUDENT_COUNT = """
	UPDATE course_instance 
	SET num_students = num_students + %s 
	WHERE id = %s
"""
