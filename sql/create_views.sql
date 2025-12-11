--
-- Add helper Views
--

CREATE OR REPLACE VIEW v_course_details AS
SELECT 
    c.course_code,
    c.course_name,
    ci.id AS course_instance_id,
    cl.hp,
    ci.num_students,
    ci.study_year,

    STRING_AGG(cip.study_period::text, ', ') AS periods,
    (32 + (0.725 * ci.num_students))::DECIMAL(10,2) AS derived_exam_hours,
    ((2 * cl.hp) + 28 + (0.2 * ci.num_students))::DECIMAL(10,2) AS derived_admin_hours
	
FROM course_instance ci
JOIN course_layout cl ON ci.course_layout_id = cl.id
JOIN course c ON cl.course_id = c.id
LEFT JOIN course_instance_period cip ON ci.id = cip.course_instance_id
GROUP BY c.course_code, c.course_name, ci.id, cl.hp, ci.num_students, ci.study_year;


CREATE OR REPLACE VIEW v_planned_hours_breakdown AS
SELECT 
    pa.course_instance_id,
    ta.activity_name,
    pa.planned_hours AS raw_hours,
    (pa.planned_hours * ta.factor)::DECIMAL(10,2) AS total_hours_with_factor
FROM planned_activity pa
JOIN teaching_activity ta ON pa.teaching_activity_id = ta.id;


CREATE OR REPLACE VIEW v_allocated_hours_breakdown AS
SELECT 
	pa.course_instance_id,
	e.employment_id,
	p.first_name || ' ' || p.last_name AS teacher_name,
    j.job_title,
    ta.activity_name,
    (aa.allocated_hours * ta.factor)::numeric(10,2) AS allocated_hours_with_factor
	
FROM allocated_activity aa
	JOIN planned_activity pa ON aa.planned_activity_id = pa.id
	JOIN teaching_activity ta ON pa.teaching_activity_id = ta.id
	JOIN employee e ON aa.employee_id = e.id
	JOIN person p ON e.person_id = p.id
	JOIN job_title j ON e.job_title_id = j.id;



--
-- Add views from task2
--
DROP MATERIALIZED VIEW IF EXISTS v_1_planned_hours_calculations;

CREATE MATERIALIZED VIEW v_1_planned_hours_calculations AS
SELECT 
    cd.course_code AS "Course Code",
	CONCAT(cd.study_year, '-', cd.course_instance_id::TEXT) AS "Course Instance ID",
    cd.hp AS "HP",
    cd.periods AS "Period",
    cd.num_students AS "# Students",

    COALESCE(SUM(CASE WHEN ph.activity_name = 'Lecture' THEN ph.total_hours_with_factor END), 0) AS "Lecture Hours",
    COALESCE(SUM(CASE WHEN ph.activity_name = 'Tutorial' THEN ph.total_hours_with_factor END), 0) AS "Tutorial Hours",
    COALESCE(SUM(CASE WHEN ph.activity_name = 'Lab' THEN ph.total_hours_with_factor END), 0) AS "Lab Hours",
    COALESCE(SUM(CASE WHEN ph.activity_name = 'Seminar' THEN ph.total_hours_with_factor END), 0) AS "Seminar Hours",
	
    COALESCE(SUM(CASE 
        WHEN ph.activity_name NOT IN ('Lecture', 'Tutorial', 'Lab', 'Seminar', 'Admin', 'Exam') 
        THEN ph.total_hours_with_factor 
    END), 0) AS "Other Overhead Hours",
	
    cd.derived_admin_hours AS "Admin",
    cd.derived_exam_hours AS "Exam",

    (
        COALESCE(SUM(ph.total_hours_with_factor), 0) + 
        cd.derived_admin_hours + 
        cd.derived_exam_hours
    ) AS "Total Hours"
	
FROM v_course_details cd
LEFT JOIN v_planned_hours_breakdown ph ON cd.course_instance_id = ph.course_instance_id
WHERE cd.study_year = TO_CHAR(CURRENT_DATE, 'YYYY')
GROUP BY 
	cd.course_code, 
	CONCAT(cd.study_year, '-', cd.course_instance_id::TEXT), 
	cd.hp, 
	cd.periods,
	cd.num_students, 
	cd.derived_admin_hours, 
	cd.derived_exam_hours;


CREATE OR REPLACE VIEW v_2_allocated_hours_course AS
SELECT 
    cd.course_code AS "Course Code",
	CONCAT(cd.study_year, '-', cd.course_instance_id::TEXT) AS "Course Instance ID",
    cd.hp AS "HP",
    ah.teacher_name AS "Teacher's Name",
    ah.job_title AS "Designation",

    COALESCE(SUM(CASE WHEN ah.activity_name = 'Lecture' THEN ah.allocated_hours_with_factor END), 0) AS "Lecture Hours",
    COALESCE(SUM(CASE WHEN ah.activity_name = 'Tutorial' THEN ah.allocated_hours_with_factor END), 0) AS "Tutorial Hours",
    COALESCE(SUM(CASE WHEN ah.activity_name = 'Lab' THEN ah.allocated_hours_with_factor END), 0) AS "Lab Hours",
    COALESCE(SUM(CASE WHEN ah.activity_name = 'Seminar' THEN ah.allocated_hours_with_factor END), 0) AS "Seminar Hours",

    COALESCE(SUM(CASE 
        WHEN ah.activity_name NOT IN ('Lecture', 'Tutorial', 'Lab', 'Seminar', 'Admin', 'Exam') 
        THEN ah.allocated_hours_with_factor 
    END), 0) AS "Other Overhead Hours",

    COALESCE(SUM(CASE WHEN ah.activity_name = 'Admin' THEN ah.allocated_hours_with_factor END), 0) AS "Admin",
    COALESCE(SUM(CASE WHEN ah.activity_name = 'Exam' THEN ah.allocated_hours_with_factor END), 0) AS "Exam",

    COALESCE(SUM(ah.allocated_hours_with_factor), 0) AS "Total"

FROM v_course_details cd
JOIN v_allocated_hours_breakdown ah ON cd.course_instance_id = ah.course_instance_id
WHERE cd.study_year = TO_CHAR(CURRENT_DATE, 'YYYY')
GROUP BY 
    cd.course_code, 
	cd.periods,
    CONCAT(cd.study_year, '-', cd.course_instance_id::TEXT), 
    cd.hp, 
    ah.teacher_name, 
    ah.job_title
ORDER BY cd.course_code, ah.teacher_name;


CREATE OR REPLACE VIEW v_3_allocated_hours_teacher AS
SELECT
    cd.course_code AS "Course Code",
    cd.course_instance_id AS "Course Instance ID",
    cd.hp AS "HP",
    cd.periods AS "Period",
    ah.teacher_name AS "Name",
    SUM(CASE WHEN ah.activity_name = 'Lecture' THEN ah.allocated_hours_with_factor ELSE 0 END) AS "Lecture Hours",
    SUM(CASE WHEN ah.activity_name = 'Tutorial' THEN ah.allocated_hours_with_factor ELSE 0 END) AS "Tutorial Hours",
    SUM(CASE WHEN ah.activity_name = 'Lab' THEN ah.allocated_hours_with_factor ELSE 0 END) AS "Lab hours",
    SUM(CASE WHEN ah.activity_name = 'Seminar' THEN ah.allocated_hours_with_factor ELSE 0 END) AS "Seminar Hours",


	COALESCE(SUM(CASE 
  		WHEN ah.activity_name NOT IN ('Lecture', 'Tutorial', 'Lab', 'Seminar', 'Admin', 'Exam') 
  		THEN ah.allocated_hours_with_factor
	END), 0) AS "Other Overhead Hours",

	SUM(CASE WHEN ah.activity_name = 'Admin' THEN ah.allocated_hours_with_factor ELSE 0 END) AS "Admin Hours",
    SUM(CASE WHEN ah.activity_name = 'Exam' THEN ah.allocated_hours_with_factor ELSE 0 END) AS "Exam Hours",
	
    SUM(ah.allocated_hours_with_factor) AS "Total Hours"
FROM v_course_details cd
JOIN v_allocated_hours_breakdown ah
      ON cd.course_instance_id = ah.course_instance_id
WHERE cd.study_year = TO_CHAR(CURRENT_DATE, 'YYYY')
GROUP BY
      cd.course_code,
      cd.course_instance_id,
      cd.hp,
      cd.periods,
      ah.teacher_name
ORDER BY ah.teacher_name, cd.course_instance_id;


CREATE OR REPLACE VIEW v_4_current_period_load AS
SELECT 
    ah.employment_id AS "Employment ID",
    ah.teacher_name AS "Name",
    cip.study_period AS "Period",
    COUNT(DISTINCT ah.course_instance_id) AS "Number of Courses"
FROM v_allocated_hours_breakdown ah
JOIN course_instance_period cip ON ah.course_instance_id = cip.course_instance_id
GROUP BY ah.employment_id, ah.teacher_name, cip.study_period
HAVING COUNT(DISTINCT ah.course_instance_id) > 1 
ORDER BY "Number of Courses" DESC;

--
-- Add views for task3
--

DROP VIEW IF EXISTS v_5_course_costs;

CREATE OR REPLACE VIEW v_5_course_costs AS
WITH 
    latest_salaries AS (
        SELECT DISTINCT ON (employee_id) 
            employee_id, 
            amount
        FROM salary_history
        WHERE valid_from <= CURRENT_DATE
        ORDER BY employee_id, valid_from DESC
    ),

    uni_stats AS (
        SELECT COALESCE(AVG(amount) / 160.0, 0) AS avg_hourly_rate 
        FROM latest_salaries
    )
SELECT 
    cd.course_code,
    cd.course_instance_id,

    CONCAT(cd.study_year, ' (', COALESCE(cd.periods, 'No Period'), ')') AS periods,
    
    cd.num_students,

    ROUND(
        (
            cd.derived_admin_hours + 
            cd.derived_exam_hours +
            COALESCE((
                SELECT SUM(ph.total_hours_with_factor)
                FROM v_planned_hours_breakdown ph
                WHERE ph.course_instance_id = cd.course_instance_id
            ), 0)
        ) * (SELECT avg_hourly_rate FROM uni_stats), 
    2) AS planned_cost,

    COALESCE(
        ROUND(
            (
                SELECT SUM(
                    (aa.allocated_hours * ta.factor) * (ls.amount / 160.0)
                )
                FROM allocated_activity aa
                JOIN planned_activity pa ON aa.planned_activity_id = pa.id
                JOIN teaching_activity ta ON pa.teaching_activity_id = ta.id
                JOIN latest_salaries ls ON aa.employee_id = ls.employee_id
                WHERE pa.course_instance_id = cd.course_instance_id
            ), 
        2), 
    0.00) AS actual_cost

FROM v_course_details cd;