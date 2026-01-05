import tkinter as tk
from tkinter import ttk, messagebox
from time import strftime
from src.UserInterface.modify_course_instance import EditStudentsView

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

def build_activity_inputs(window):
    frame = tk.Frame(window, bg="black")
    frame.pack(pady=10)

    tk.Label(frame, text="Acitivity id:", bg="black", fg="red").grid(row=0, column=0, padx=5)

    window.activity_entry = tk.Entry(frame)
    window.activity_entry.insert(0, strftime("%Y"))
    window.activity_entry.grid(row=0, column=1, padx=5)

    tk.Button(
		frame,
		text="Load activities",
		command=lambda: load_allocated_activities(window),  
		bg="black",
		fg="red",
		highlightbackground="red",
	).grid(row=0, column=2, padx=10)
    

def load_allocated_activities(window):
    period = window.activity_entry.get()
    #TODO

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