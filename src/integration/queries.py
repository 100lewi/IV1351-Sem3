#
#   Read-only queries (we can use views)
#

GET_ALLOCATION_DETAILS = """
    SELECT
        p.first_name || ' ' || p.last_name as teacher_name,
        cd.course_code,
        cd.periods,
        ta.activity_name,
        aa.allocated_hours
    FROM allocated_activity aa
    JOIN employee e ON aa.employee_id = e.id
    JOIN person p ON e.person_id = p.id
    JOIN planned_activity pa ON aa.planned_activity_id = pa.id
    JOIN teaching_activity ta ON pa.teaching_activity_id = ta.id
    JOIN v_course_details cd ON pa.course_instance_id = cd.course_instance_id
    WHERE aa.planned_activity_id = %s AND aa.employee_id = %s
"""

GET_ALLOCATED_ACTIVITY = """
	SELECT * FROM allocated_activity aa WHERE aa.planned_activity = %s
"""

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

GET_COURSE_INSTANCES_BY_YEAR = """
	SELECT
		course_instance_id,
		course_code,
		periods
	FROM v_5_course_costs
	WHERE periods LIKE %s
	ORDER BY periods, course_instance_id
"""

GET_EMPLOYEE_ACTIVITY = """
	SELECT *
	FROM allocated_activity
	WHERE planned_activity_id = %s
"""

GET_EMPLOYEE_LOAD_IN_PERIOD = """
	SELECT COUNT(DISTINCT pa.course_instance_id)
	FROM allocated_activity aa
	JOIN planned_activity pa ON aa.planned_activity_id = pa.id
	JOIN course_instance_period cip ON pa.course_instance_id = cip.course_instance_id
	WHERE aa.employee_id = %s
		AND cip.study_period = %s
"""

GET_MAX_STUDENTS = """
SELECT cl.max_students
FROM course_instance ci
JOIN course_layout cl
     ON ci.course_layout_id = cl.id
WHERE ci.id = %s;
"""

GET_PERIOD_FROM_PLANNED_ACTIVITY = """
	SELECT cip.study_period
	FROM planned_activity pa
	JOIN course_instance_period cip ON pa.course_instance_id = cip.course_instance_id
	WHERE pa.id = %s
"""

GET_PLANNED_ACTIVITY_ROWS = """
	SELECT COUNT(*) FROM planned_activity;
"""

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

GET_SYSTEM_VARIABLE = """
	SELECT config_value
	FROM system_config
	WHERE description = %s
"""

GRAB_ACTIVITY_ROW = """
SELECT *
FROM allocated_activity
WHERE planned_activity_id = %s
"""

#
# 	Locking read queries
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
# 	Write queries
#

CREATE_ACTIVITY_TYPE = """
	INSERT INTO teaching_activity (activity_name, factor)
	VALUES (%s, %s)
	ON CONFLICT (activity_name) DO NOTHING
	RETURNING id, activity_name, factor
"""

INSERT_ALLOCATED_ACTIVITY = """
INSERT INTO allocated_activity (planned_activity_id, employee_id, allocated_hours)
VALUES (%s, %s, %s)
RETURNING planned_activity_id, employee_id, allocated_hours
"""

INSERT_PLANNED_ACTIVITY = """
	INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours)
	VALUES (%s, %s, %s)
	RETURNING id, teaching_activity_id, course_instance_id, planned_hours
"""

UPDATE_STUDENT_COUNT = """
	UPDATE course_instance
	SET num_students = %s
	WHERE id = %s
"""

#
# 	DELETE queries
#

DEALLOCATE_EMPLOYEE = """
	DELETE FROM allocated_activity
	WHERE planned_activity_id = %s
		AND employee_id = %s
"""
