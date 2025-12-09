from src.integration import queries
from src.model.dto import CourseCostDTO, StudentsActualCostDTO  # Might need more later, we'll see
import random
import traceback

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
    def read_student_count(self, course_instance_id): 
        cursor = self.connection.cursor()
        try:
            cursor.execute(queries.SHOW_STUDENTS_AND_PRICE, [course_instance_id])
        except Exception as e:
            print("🔥 SQL ERROR OCCURRED:")
            print(e)
            traceback.print_exc()
            raise
        row = cursor.fetchone()
        cursor.close()
        if row:
            return StudentsActualCostDTO(
                num_students=row[0],
                actual_cost=row[1],
            )
        else: 
            print("Some error")

    # UPDATE
    def write_student_update(self, course_instance_id):
        increment = 100
        cursor = self.connection.cursor()
        try:
            cursor.execute(queries.UPDATE_STUDENT_COUNT, [increment, course_instance_id])
        except Exception as e:
            print("🔥 SQL ERROR OCCURRED:")
            print(e)
            traceback.print_exc()
            raise


        cursor.close()       
            
    def write_new_actual_cost(self, course_instance_id):
        cursor = self.connection.cursor()
        try:
            cursor.execute(queries.GET_PLANNED_ACTIVITY_ROWS)
        except Exception as e:
            print("🔥 SQL ERROR OCCURRED:")
            print(e)
            traceback.print_exc()
            raise
        planned_activity_rows = cursor.fetchall()
        for i in range(7):
            
            try:
                cursor.execute(queries.INSERT_PLANNED_ACTIVITY, [planned_activity_rows[0][0] + 1 + i, random.randint(1,7), course_instance_id, random.randint(10, 20)])
            except Exception as e:
                print("🔥 SQL ERROR OCCURRED:")
                print(e)
                traceback.print_exc()
                raise
        
        cursor.execute(queries.GET_SUITABLE_EMPLOYEES)
        rows = cursor.fetchall()
        
        for i in range(4): 
            cursor.execute(queries.INSERT_ALLOCATED_ACTIVITY, [random.randint(planned_activity_rows[0][0], planned_activity_rows[0][0] + 6), rows[random.randint(1, len(rows) - 1)][0], random.randint(10, 20)])
        cursor.close()
    # DELETE
