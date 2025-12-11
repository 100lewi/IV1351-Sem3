from dataclasses import dataclass
from decimal import Decimal


# Table (entity) mapped DTOs (These are for reading/writing)
@dataclass
class CourseCostDTO:
    """
    Docstring for CourseCostDTO
    """

    course_code: str
    course_instance_id: str
    period: str
    num_students: int
    planned_cost: Decimal
    actual_cost: Decimal


@dataclass
class StudentCountDTO:
    id: int
    current_students: int
    max_students: int


@dataclass
class StudentsActualCostDTO:
    num_students: int
    actual_cost: int


@dataclass
class ExcerciseViewDTO:
    course_instance_id: int
    study_period: str
    teaching_activity: int
    employee_id: int
    allocated_hours: int


@dataclass
class EmployeeActivityDTO:
    employee_id: int
    planned_activity_id: int
    allocated_hours: Decimal


# Report mappings (view DTOs) (These are only for reading)
@dataclass
class PlannedHoursDTO:
    course_code: str
    hp: int
    periods: str
    num_students: int
    lecture_hours: int
    tutorial_hours: int
    lab_hours: int
    seminar_hours: int
    other_overhead_hours: int
    admin_hours: int
    exam_hours: int
    total_hours: int
