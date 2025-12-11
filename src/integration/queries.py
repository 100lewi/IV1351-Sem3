#
#   Read-only queries (we can use views)
#

GET_COURSE_COST = """
	SELECT 
		course_code, 
		course_instance_id, 
		periods, 
		num_students,
		planned_cost, 
		actual_cost 
	FROM v_5_course_costs 
	WHERE course_instance_id = %s
"""

GET_PERIOD_FROM_PLANNED_ACTIVITY = """
	SELECT cip.study_period
	FROM planned_activity pa
	JOIN course_instance_period cip ON pa.course_instance_id = cip.course_instance_id
	WHERE pa.id = %s
"""

GET_SYSTEM_VARIABLE = """
	SELECT config_value
	FROM system_config
	WHERE description = %s
"""

GET_EMPLOYEE_LOAD_IN_PERIOD = """
	SELECT COUNT(DISTINCT pa.course_instance_id)
	FROM allocated_activity aa
	JOIN planned_activity pa ON aa.planned_activity_id = pa.id
	JOIN course_instance_period cip ON pa.course_instance_id = cip.course_instance_id
	WHERE aa.employee_id = %s 
		AND cip.study_period = %s
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

GRAB_ACTIVITY_ROW = """
SELECT *
FROM allocated_activity
WHERE planned_activity_id = %s
"""

GRAB_LATEST_ID = """
SELECT id
FROM planned_activity
ORDER BY id DESC
LIMIT 1;
"""

GET_EMPLOYEE_ACTIVITY = """
	SELECT * 
	FROM allocated_activity
	WHERE planned_activity_id = %s
"""

#
# Locking read queries
#

GET_COURSE_INSTANCE_FOR_UPDATE = """
	SELECT 
		ci.id, 
		ci.num_students, 
		cl.max_students
	FROM course_instance ci
	join course_layout cl on ci.course_layout_id = cl.id
	where ci.id = %s
	FOR UPDATE OF ci
"""

#
# Write queries
#

UPDATE_STUDENT_COUNT = """
	UPDATE course_instance 
	SET num_students = %s 
	WHERE id = %s
"""

INSERT_ALLOCATED_ACTIVITY = """
INSERT INTO allocated_activity (planned_activity_id, employee_id, allocated_hours)
VALUES (%s, %s, %s)
RETURNING planned_activity_id, employee_id, allocated_hours
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

GET_PLANNED_ACTIVITY_ROWS = """
	SELECT COUNT(*) FROM planned_activity;
"""

DEALLOCATE_EMPLOYEE = """
DELETE FROM allocated_activity
WHERE planned_activity_id = %s;
"""

ALLOCATE_EMPLOYEE = """
UPDATE allocated_activity
SET employee_id = %s
WHERE planned_activity_id = %s;
"""

# Method 4
INSERT_EXCERCISE = """
INSERT INTO teaching_activity (id, activity_name, factor)
OVERRIDING SYSTEM VALUE
VALUES (8, 'Exercise', 1)
"""

INSERT_EXCERCISE_INTO_PLANNED_ACTIVITY = """
INSERT INTO planned_activity (id, teaching_activity_id, course_instance_id, planned_hours)
OVERRIDING SYSTEM VALUE
VALUES (%s, 8, %s, %s);
"""

INSERT_EXCERCISE_INTO_ALLOCATED_ACTIVITY = """
INSERT INTO allocated_activity (planned_activity_id, employee_id, allocated_hours)
VALUES (%s, %s, %s);
"""

CREATE_EXCERCISE_VIEW = """
SELECT 
    ci.id AS course_instance_id,
    cip.study_period,
    ta.activity_name AS teaching_activity,
    aa.employee_id,
    aa.allocated_hours
FROM allocated_activity aa
JOIN planned_activity pa 
    ON aa.planned_activity_id = pa.id
JOIN teaching_activity ta
    ON pa.teaching_activity_id = ta.id
JOIN course_instance ci
    ON pa.course_instance_id = ci.id
LEFT JOIN course_instance_period cip
    ON ci.id = cip.course_instance_id
WHERE pa.id = %s
ORDER BY ci.id, cip.study_period;
"""
