import tkinter as tk
from tkinter import messagebox

class EditStudentsView(tk.Toplevel):
    def __init__(self, controller, parent, instance_id):
        super().__init__(parent)
        self.controller = controller
        self.instance_id = instance_id

        self.title("Edit Student Numbers")
        self.geometry("300x150")
        self.configure(bg="black")

        self.build_ui()

    def build_ui(self):
        tk.Label(self, text="Number of students to add:", bg="black", fg="red").pack(pady=10)

        # Empty entry box for user input
        self.students_entry = tk.Entry(self)
        self.students_entry.pack(pady=5)

        tk.Button(
            self,
            text="Save",
            bg="black",
            fg="red",
            command=self.save_students
        ).pack(pady=10)

    def save_students(self):
        try:
            add_value = int(self.students_entry.get())
            
            # Call controller to add students
            self.controller.update_student_count(self.instance_id, add_value)
            messagebox.showinfo("Success", f"Added {add_value} students!")
            self.destroy()

        except ValueError as ve:
            messagebox.showerror("Invalid Input", str(ve))
        except Exception as e:
            messagebox.showerror("Error", str(e))
