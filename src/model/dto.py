from dataclasses import dataclass
from decimal import Decimal


@dataclass
class AllocationDetailsDTO:
    employee_name: str
    course_code: str
    period: str
    activity_name: str
    hours: Decimal


@dataclass
class CourseCostDTO:
    course_code: str
    course_instance_id: str
    period: str
    num_students: int
    planned_cost: Decimal
    actual_cost: Decimal


@dataclass
class CourseInstanceDTO:
    course_instance_id: int
    course_code: str
    periods: str


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
class EmployeeActivityDTO:
    employee_id: int
    planned_activity_id: int
    allocated_hours: Decimal


@dataclass
class PlannedActivityDTO:
    planned_activity_id: int
    course_instance_id: int
    teaching_activity_id: int
    planned_hours: Decimal


@dataclass
class TeachingActivityDTO:
    teaching_activity_id: int
    activity_name: str
    factor: Decimal
