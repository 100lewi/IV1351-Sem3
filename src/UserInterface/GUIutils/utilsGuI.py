import tkinter as tk
from tkinter import ttk, messagebox
from time import strftime


#=======================BUILDS==================================

#--------------------------COURSES-----------------------------
def build_year_inputs(window):
    frame = tk.Frame(window, bg="black")
    frame.pack(pady=10)

    tk.Label(frame, text="Year:", bg="black", fg="red").grid(row=0, column=0, padx=5)

    window.year_entry = tk.Entry(frame)
    window.year_entry.insert(0, strftime("%Y"))
    window.year_entry.grid(row=0, column=1, padx=5)

    tk.Button(
        frame,
        text="Load Courses",
        command=lambda: load_courses(window),
        bg="black",
        fg="red",
        highlightbackground="red",
    ).grid(row=0, column=2, padx=10)
    
#-----------------------------ALLOCATIONS-----------------------------
def build_allocation(window):
    # Bigger frame
    frame = tk.Frame(window, bg="black", width=500, height=500)
    frame.pack(pady=20, padx=20, fill="x")
    frame.pack_propagate(False)  
    
    # Planned Activity ID
    tk.Label(frame, text="Planned Activity ID:", bg="black", fg="red")\
        .grid(row=0, column=0, padx=10, pady=5, sticky="w")

    window.activity_entry = tk.Entry(frame, width=15)
    window.activity_entry.grid(row=0, column=1, padx=10, pady=5)

    # Employee ID
    tk.Label(frame, text="Employee ID:", bg="black", fg="red")\
        .grid(row=1, column=0, padx=10, pady=5, sticky="w")

    window.employee_entry = tk.Entry(frame, width=15)
    window.employee_entry.grid(row=1, column=1, padx=10, pady=5)

    # Hours entry
    tk.Label(frame, text="Hours:", bg="black", fg="red")\
        .grid(row=2, column=0, padx=10, pady=5, sticky="w")

    window.hours_entry = tk.Entry(frame, width=15)
    window.hours_entry.grid(row=2, column=1, padx=10, pady=5)

    # Allocate button
    tk.Button(
        frame,
        text="Allocate Activity",
        command=lambda: allocate_activity(window),
        bg="black",
        fg="red",
        highlightbackground="red",
        width=15,
        font=("Helvetica", 11, "bold")
    ).grid(row=0, column=2, rowspan=3, padx=15, pady=5)

def build_deallocation(window):
    frame = tk.Frame(window, bg="black", width=500, height=500)
    frame.pack(pady=20, padx=20, fill="x")
    frame.pack_propagate(False)  
    
    # Planned Activity ID
    tk.Label(frame, text="Planned Activity ID:", bg="black", fg="red")\
        .grid(row=0, column=0, padx=10, pady=5, sticky="w")

    window.activity_entry = tk.Entry(frame, width=15)
    window.activity_entry.grid(row=0, column=1, padx=10, pady=5)

    # Employee ID
    tk.Label(frame, text="Employee ID:", bg="black", fg="red")\
        .grid(row=1, column=0, padx=10, pady=5, sticky="w")

    window.employee_entry = tk.Entry(frame, width=15)
    window.employee_entry.grid(row=1, column=1, padx=10, pady=5)

    # Deallocate button
    tk.Button(
        frame,
        text="Deallocate Activity",
        command=lambda: deallocate_activity(window),
        bg="black",
        fg="red",
        highlightbackground="red",
        width=15,
        font=("Helvetica", 11, "bold")
    ).grid(row=0, column=2, rowspan=3, padx=15, pady=5)

#-----------------------TEACHING ACTIVITY---------------------------
def build_activity(parent_frame, window):
    """Builds activity input widgets inside the given parent frame."""

    tk.Label(parent_frame, text="Activity Name (Default 'Excercise'):", bg="black", fg="red")\
        .grid(row=0, column=0, padx=10, pady=5, sticky="w")
    window.activity_name_entry = tk.Entry(parent_frame, width=20)
    window.activity_name_entry.grid(row=0, column=1, padx=10, pady=5)

    tk.Label(parent_frame, text="Activity Factor:", bg="black", fg="red")\
        .grid(row=1, column=0, padx=10, pady=5, sticky="w")
    window.activity_factor_entry = tk.Entry(parent_frame, width=20)
    window.activity_factor_entry.grid(row=1, column=1, padx=10, pady=5)

    tk.Button(
        parent_frame,
        text="Add Activity",
        command=lambda: add_activity(window),
        bg="black",
        fg="red",
        highlightbackground="red",
        width=15,
        font=("Helvetica", 11, "bold")
    ).grid(row=0, column=2, rowspan=2, padx=15, pady=5)
    
#-----------------------PLANNED ACTIVITY---------------------------
def build_planned_activity(parent_frame, window):
    frame = tk.Frame(window, bg="black", width=500, height=500)
    frame.pack(pady=20, padx=20, fill="x")
    frame.pack_propagate(False)  

    tk.Label(frame, text="Teaching Activity ID:", bg="black", fg="red")\
        .grid(row=0, column=0, padx=10, pady=5, sticky="w")
    window.teaching_activity_entry = tk.Entry(frame, width=15)
    window.teaching_activity_entry.grid(row=0, column=1, padx=10, pady=5)

    tk.Label(parent_frame, text="Course Instance ID:", bg="black", fg="red")\
        .grid(row=0, column=0, padx=10, pady=5, sticky="w")
    window.course_instance_id = tk.Entry(parent_frame, width=20)
    window.course_instance_id.grid(row=0, column=1, padx=10, pady=5)

    tk.Label(parent_frame, text="Hours:", bg="black", fg="red")\
        .grid(row=1, column=0, padx=10, pady=5, sticky="w")
    window.activity_hours_planned = tk.Entry(parent_frame, width=20)
    window.activity_hours_planned.grid(row=1, column=1, padx=10, pady=5)

    tk.Button(
        parent_frame,
        text="Add Planned Activity",
        command=lambda: add_planned_activity(window),
        bg="black",
        fg="red",
        highlightbackground="red",
        width=25,
        font=("Helvetica", 11, "bold")
    ).grid(row=0, column=2, rowspan=2, padx=15, pady=5)

#============FUNCTIONALITY==========================
#-----------------------------ALLOCATIONS-----------------------------

def deallocate_activity(window):
    try:
        planned_activity_id = int(window.activity_entry.get())
        employee_id = int(window.employee_entry.get())

        window.controller.deallocate_employee(
            planned_activity_id,
            employee_id
        )

        messagebox.showinfo(
            "Success",
            f"Deallocated employee {employee_id} from activity {planned_activity_id}."
        )

    except ValueError:
        messagebox.showerror(
            "Invalid Input",
            "Planned Activity ID and Employee ID must be numbers."
        )
    except Exception as e:
        messagebox.showerror("Error", str(e))


def allocate_activity(window):
    try:
        planned_activity_id = int(window.activity_entry.get())
        employee_id = int(window.employee_entry.get())
        hours = int(window.hours_entry.get())

        window.controller.allocate_employee_to_activity(
            employee_id,
            planned_activity_id,
            hours
        )

        # Success message
        messagebox.showinfo(
            "Success",
            f"Allocated {hours}h to employee {employee_id} for activity {planned_activity_id}."
        )

    except ValueError:
        messagebox.showerror(
            "Invalid Input",
            "Planned Activity ID, Employee ID, and Hours must be numbers."
        )
    except Exception as e:
        messagebox.showerror("Error", str(e))

#--------------------------COURSES-----------------------------

def load_courses(window):
    year = window.year_entry.get()
    try:
        courses = window.controller.get_course_instances(year)
        window.table.delete(*window.table.get_children())

        for course in courses:
            instance_id = int(course.course_instance_id)
            window.table.insert(
                "", "end", values=(instance_id, course.course_code, course.periods)
            )

    except ValueError:
        messagebox.showerror("Invalid Input", "Year or course ID must be a number.")
    except Exception as e:
        messagebox.showerror("Error", str(e))
        
#-----------------------TEACHING ACTIVITY---------------------------
def add_activity(window):
    try:
        # Get values from entries
        activity_name = window.activity_name_entry.get().strip()
        activity_factor_text = window.activity_factor_entry.get().strip()

        # Default value for name if empty
        if not activity_name:
            activity_name = "Excercise"

        activity_factor = float(activity_factor_text) if activity_factor_text else 1.0

        window.controller.create_teaching_activity(
            activity_name,
            activity_factor
        )

        messagebox.showinfo(
            "Success",
            f"Created {activity_name} with factor {activity_factor}."
        )

    except ValueError:
        messagebox.showerror(
            "Invalid Input",
            "Activity factor must be a number."
        )
    except Exception as e:
        messagebox.showerror("Error", str(e))
        
#-----------------------PLANNED ACTIVITY---------------------------
def add_planned_activity(window):
    teaching_activity_id = window.teaching_activity_entry.get()
    course_instance_id = window.course_instance_id.get()
    hours = window.activity_hours_planned.get()
    
    window.controller.create_planned_activity(
        teaching_activity_id,
        course_instance_id, 
        hours
    )