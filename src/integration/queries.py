#
#   Read-only queries (we can use views)
#
GET_COURSE_COST = """
	SELECT course_code, course_instance_id, periods, num_students, planned_cost, actual_cost 
	FROM v_5_course_costs 
	WHERE course_instance_id = %s
"""

SHOW_STUDENTS = """
	SELECT num_students
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
SELECT 
    e.id AS employee_id,
    COUNT(DISTINCT pa.course_instance_id) AS course_count
FROM employee e
LEFT JOIN allocated_activity aa 
       ON e.id = aa.employee_id
LEFT JOIN planned_activity pa 
       ON aa.planned_activity_id = pa.id
LEFT JOIN course_instance_period cip
       ON pa.course_instance_id = cip.course_instance_id
       AND cip.study_period = %s
GROUP BY e.id
HAVING COUNT(DISTINCT pa.course_instance_id) < 4;
"""

GET_MAX_STUDENTS = """
SELECT cl.max_students
FROM course_instance ci
JOIN course_layout cl
     ON ci.course_layout_id = cl.id
WHERE ci.id = %s;
"""

UPDATE_STUDENT_COUNT = """
	UPDATE course_instance 
	SET num_students = num_students + %s 
	WHERE id = %s
"""

GET_PLANNED_ACTIVITY_ROWS = """
	SELECT COUNT(*) FROM planned_activity;
"""
DEALLOCATE_EMPLOYEE = """
UPDATE allocated_activity
SET employee_id = NULL
WHERE planned_activity_id = %s;
"""

ALLOCATE_EMPLOYEE = """
UPDATE allocated_activity
SET employee_id = %s
WHERE planned_activity_id = %s;
"""