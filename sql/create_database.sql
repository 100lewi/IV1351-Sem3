--
-- Adding custom types
--
CREATE TYPE study_periods AS ENUM ('P1', 'P2', 'P3', 'P4');


--
-- Creating Tables
--

CREATE TABLE course (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 course_code VARCHAR(6) UNIQUE NOT NULL,
 course_name VARCHAR(500) NOT NULL
);

ALTER TABLE course ADD CONSTRAINT PK_course PRIMARY KEY (id);


CREATE TABLE course_layout (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 course_id INT NOT NULL,
 min_students INT NOT NULL,
 max_students INT NOT NULL,
 hp DECIMAL(3, 1) NOT NULL,
 valid_from DATE NOT NULL
);

ALTER TABLE course_layout ADD CONSTRAINT PK_course_layout PRIMARY KEY (id);


CREATE TABLE department (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 department_name VARCHAR(500) UNIQUE NOT NULL,
 manager_id INT
);

ALTER TABLE department ADD CONSTRAINT PK_department PRIMARY KEY (id);


CREATE TABLE email (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 email VARCHAR(256) UNIQUE NOT NULL
);

ALTER TABLE email ADD CONSTRAINT PK_email PRIMARY KEY (id);


CREATE TABLE employee (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 person_id INT NOT NULL,
 job_title_id INT NOT NULL,
 supervisor_id INT,
 employment_id VARCHAR(10) UNIQUE NOT NULL,
 department_id INT NOT NULL
);

ALTER TABLE employee ADD CONSTRAINT PK_employee PRIMARY KEY (id);


CREATE TABLE interest (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 interest VARCHAR(500) UNIQUE NOT NULL
);

ALTER TABLE interest ADD CONSTRAINT PK_interest PRIMARY KEY (id);


CREATE TABLE job_title (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 job_title VARCHAR(500) UNIQUE
);

ALTER TABLE job_title ADD CONSTRAINT PK_job_title PRIMARY KEY (id);


CREATE TABLE person (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 personal_number VARCHAR(12) UNIQUE NOT NULL,
 first_name VARCHAR(500) NOT NULL,
 last_name VARCHAR(500) NOT NULL,
 street VARCHAR(500) NOT NULL,
 zip VARCHAR(12) NOT NULL,
 city VARCHAR(500) NOT NULL
);

ALTER TABLE person ADD CONSTRAINT PK_person PRIMARY KEY (id);


CREATE TABLE person_email (
 email_id INT NOT NULL,
 person_id INT NOT NULL
);

ALTER TABLE person_email ADD CONSTRAINT PK_person_email PRIMARY KEY (email_id,person_id);


CREATE TABLE phone (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 phone VARCHAR(16) UNIQUE NOT NULL
);

ALTER TABLE phone ADD CONSTRAINT PK_phone PRIMARY KEY (id);


CREATE TABLE salary_history (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 amount DECIMAL(10, 2) NOT NULL,
 valid_from DATE NOT NULL,
 employee_id INT NOT NULL
);

ALTER TABLE salary_history ADD CONSTRAINT PK_salary_history PRIMARY KEY (id);


CREATE TABLE skill_set (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 skill_set VARCHAR(500) UNIQUE NOT NULL
);

ALTER TABLE skill_set ADD CONSTRAINT PK_skill_set PRIMARY KEY (id);


CREATE TABLE system_config (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 config_value VARCHAR(100) NOT NULL,
 description VARCHAR(500) UNIQUE
);

ALTER TABLE system_config ADD CONSTRAINT PK_system_config PRIMARY KEY (id);


CREATE TABLE teaching_activity (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 activity_name VARCHAR(500) UNIQUE NOT NULL,
 factor DECIMAL(5, 2) NOT NULL
);

ALTER TABLE teaching_activity ADD CONSTRAINT PK_teaching_activity PRIMARY KEY (id);


CREATE TABLE course_instance (
 id INT GENERATED ALWAYS AS IDENTITY UNIQUE NOT NULL,
 course_layout_id INT NOT NULL,
 num_students INT NOT NULL,
 study_year VARCHAR(4) NOT NULL
);

ALTER TABLE course_instance ADD CONSTRAINT PK_course_instance PRIMARY KEY (id);


CREATE TABLE course_instance_period (
 course_instance_id INT NOT NULL,
 study_period study_periods NOT NULL
);

ALTER TABLE course_instance_period ADD CONSTRAINT PK_course_instance_period PRIMARY KEY (course_instance_id,study_period);


CREATE TABLE employee_interest (
 interest_id INT NOT NULL,
 employee_id INT NOT NULL
);

ALTER TABLE employee_interest ADD CONSTRAINT PK_employee_interest PRIMARY KEY (interest_id,employee_id);


CREATE TABLE employee_skill_set (
 skill_set_id INT NOT NULL,
 employee_id INT NOT NULL
);

ALTER TABLE employee_skill_set ADD CONSTRAINT PK_employee_skill_set PRIMARY KEY (skill_set_id,employee_id);


CREATE TABLE person_phone (
 phone_id INT NOT NULL,
 person_id INT NOT NULL
);

ALTER TABLE person_phone ADD CONSTRAINT PK_person_phone PRIMARY KEY (phone_id,person_id);


CREATE TABLE planned_activity (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 teaching_activity_id INT NOT NULL,
 course_instance_id INT NOT NULL,
 planned_hours DECIMAL(5, 2) NOT NULL
);

ALTER TABLE planned_activity ADD CONSTRAINT PK_planned_activity PRIMARY KEY (id);


CREATE TABLE allocated_activity (
 planned_activity_id INT NOT NULL,
 employee_id INT NOT NULL,
 allocated_hours DECIMAL(5, 2)
);

ALTER TABLE allocated_activity ADD CONSTRAINT PK_allocated_activity PRIMARY KEY (planned_activity_id,employee_id);


--
-- Setting up FKs
--

ALTER TABLE course_layout 
ADD CONSTRAINT FK_course_layout_0 
FOREIGN KEY (course_id) REFERENCES course (id)
ON DELETE RESTRICT ON UPDATE CASCADE;


ALTER TABLE department 
ADD CONSTRAINT FK_department_0 
FOREIGN KEY (manager_id) REFERENCES employee (id)
ON DELETE SET NULL ON UPDATE CASCADE;


ALTER TABLE employee 
ADD CONSTRAINT FK_employee_0 
FOREIGN KEY (person_id) REFERENCES person (id)
ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE employee 
ADD CONSTRAINT FK_employee_1 
FOREIGN KEY (job_title_id) REFERENCES job_title (id)
ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE employee 
ADD CONSTRAINT FK_employee_2 
FOREIGN KEY (supervisor_id) REFERENCES employee (id)
ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE employee 
ADD CONSTRAINT FK_employee_3 
FOREIGN KEY (department_id) REFERENCES department (id)
ON DELETE RESTRICT ON UPDATE CASCADE;


ALTER TABLE person_email 
ADD CONSTRAINT FK_person_email_0 
FOREIGN KEY (email_id) REFERENCES email (id)
ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE person_email 
ADD CONSTRAINT FK_person_email_1 
FOREIGN KEY (person_id) REFERENCES person (id)
ON DELETE CASCADE ON UPDATE CASCADE;


ALTER TABLE salary_history 
ADD CONSTRAINT FK_salary_history_0 
FOREIGN KEY (employee_id) REFERENCES employee (id)
ON DELETE CASCADE ON UPDATE CASCADE;


ALTER TABLE course_instance 
ADD CONSTRAINT FK_course_instance_0 
FOREIGN KEY (course_layout_id) REFERENCES course_layout (id)
ON DELETE CASCADE ON UPDATE CASCADE;


ALTER TABLE course_instance_period 
ADD CONSTRAINT FK_course_instance_period_0 
FOREIGN KEY (course_instance_id) REFERENCES course_instance (id)
ON DELETE CASCADE ON UPDATE CASCADE;


ALTER TABLE employee_interest 
ADD CONSTRAINT FK_employee_interest_0 
FOREIGN KEY (interest_id) REFERENCES interest (id)
ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE employee_interest 
ADD CONSTRAINT FK_employee_interest_1 
FOREIGN KEY (employee_id) REFERENCES employee (id)
ON DELETE CASCADE ON UPDATE CASCADE;


ALTER TABLE employee_skill_set 
ADD CONSTRAINT FK_employee_skill_set_0 
FOREIGN KEY (skill_set_id) REFERENCES skill_set (id)
ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE employee_skill_set 
ADD CONSTRAINT FK_employee_skill_set_1 
FOREIGN KEY (employee_id) REFERENCES employee (id)
ON DELETE CASCADE ON UPDATE CASCADE;


ALTER TABLE person_phone 
ADD CONSTRAINT FK_person_phone_0 
FOREIGN KEY (phone_id) REFERENCES phone (id)
ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE person_phone 
ADD CONSTRAINT FK_person_phone_1 
FOREIGN KEY (person_id) REFERENCES person (id)
ON DELETE CASCADE ON UPDATE CASCADE;


ALTER TABLE planned_activity 
ADD CONSTRAINT FK_planned_activity_0 
FOREIGN KEY (teaching_activity_id) 
REFERENCES teaching_activity (id)
ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE planned_activity 
ADD CONSTRAINT FK_planned_activity_1 
FOREIGN KEY (course_instance_id) 
REFERENCES course_instance (id)
ON DELETE CASCADE ON UPDATE CASCADE;


ALTER TABLE allocated_activity 
ADD CONSTRAINT FK_allocated_activity_0 
FOREIGN KEY (planned_activity_id) REFERENCES planned_activity (id)
ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE allocated_activity 
ADD CONSTRAINT FK_allocated_activity_1 
FOREIGN KEY (employee_id) REFERENCES employee (id)
ON DELETE CASCADE ON UPDATE CASCADE;


--
-- Inserting default config values
--

INSERT INTO system_config (config_value, description) VALUES ('4', 'employee_max_courses');


--
-- Adding functions
--
CREATE OR REPLACE FUNCTION check_employee_course_limit()
RETURNS TRIGGER AS $$
DECLARE
    new_instance_id INT;
    course_limit INT;
    course_year VARCHAR;
    course_periods study_periods[];
    current_period study_periods;
    current_course_count INT;
BEGIN
    SELECT config_value::INT INTO course_limit
    FROM system_config
    WHERE description = 'employee_max_courses';

    IF course_limit IS NULL THEN
        course_limit := 4;
    END IF;

    SELECT pa.course_instance_id, ci.study_year, ARRAY_AGG(cip.study_period)
    INTO new_instance_id, course_year, course_periods
    FROM planned_activity pa
    JOIN course_instance ci ON pa.course_instance_id = ci.id
    LEFT JOIN course_instance_period cip ON ci.id = cip.course_instance_id
    WHERE pa.id = NEW.planned_activity_id
    GROUP BY pa.course_instance_id, ci.study_year;

    IF course_periods IS NULL OR cardinality(course_periods) = 0 THEN
        RAISE EXCEPTION 'Cannot assign employee % to Course Instance % because the course has no study periods defined yet.',
            NEW.employee_id, new_instance_id;
    END IF;

    PERFORM 1
    FROM allocated_activity aa
    JOIN planned_activity pa ON aa.planned_activity_id = pa.id
    WHERE aa.employee_id = NEW.employee_id
    AND pa.course_instance_id = new_instance_id;

    IF FOUND THEN
        RETURN NEW;
    END IF;

    FOREACH current_period IN ARRAY course_periods
    LOOP
        SELECT COUNT(DISTINCT pa.course_instance_id)
        INTO current_course_count
        FROM allocated_activity aa
        JOIN planned_activity pa ON aa.planned_activity_id = pa.id
        JOIN course_instance ci ON pa.course_instance_id = ci.id
        JOIN course_instance_period cip ON ci.id = cip.course_instance_id
        WHERE aa.employee_id = NEW.employee_id
        AND ci.study_year = course_year
        AND cip.study_period = current_period;

        IF current_course_count >= course_limit THEN
            RAISE EXCEPTION 'Employee % has reached the maximum amount of % courses for period % of % (limit: %)',
                NEW.employee_id,
                current_course_count,
                current_period,
                course_year,
                course_limit;
        END IF;
    END LOOP;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

--
-- 2. The Trigger
--
CREATE TRIGGER trg_limit_employee_courses
BEFORE INSERT ON allocated_activity
FOR EACH ROW
EXECUTE FUNCTION check_employee_course_limit();
