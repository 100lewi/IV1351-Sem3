CREATE INDEX idx_cip_period 
ON course_instance_period(study_period, course_instance_id);

CREATE INDEX idx_aa_join 
ON allocated_activity(employee_id, planned_activity_id);

CREATE INDEX idx_ci_year 
ON course_instance(study_year);