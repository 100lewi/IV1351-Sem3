from src.integration import queries
from src.model.dto import CourseCostDTO  # Might need more later, we'll see


class SchoolDAO:
    def __init__(self, connection):
        self.connection = connection

    # CREATE

    # READ
    def read_course_cost(self, course_instance_id):
        cursor = self.connection.cursor()

        cursor.execute(queries.GET_COURSE_COST, [course_instance_id])
        row = cursor.fetchone()
        cursor.close()

        if row:
            return CourseCostDTO(
                course_code=row[0],
                course_instance_id=row[1],
                period=row[2],
                num_students=row[3],
                planned_cost=row[4],
                actual_cost=row[5],
            )

    # UPDATE

    # DELETE
