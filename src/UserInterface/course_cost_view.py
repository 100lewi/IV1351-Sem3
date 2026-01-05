import tkinter as tk
from tkinter import messagebox, ttk
from time import strftime
from src.UserInterface.modify_course_instance import EditStudentsView
from src.UserInterface.GUIutils import utilsGuI


class CourseCostView(tk.Toplevel):

    # ========================= FIRST METHOD ==========================

    # initialize, self explanatory
    def __init__(self, controller, parent, editable=False):
        super().__init__(parent)

        self.controller = controller
        self.editable = editable

        self.title("Course Costs")
        self.configure(bg="black")
        self.geometry("700x500")

        utilsGuI.build_year_inputs(self)
        self.build_table()

    # ttk.treeview is a table widget which looks really nice and presents the user
    # with relevant information, columns are set to course id, code and period

    def build_table(self):
        self.table = ttk.Treeview(self, columns=("id", "code", "period"), show="headings")
        self.table.heading("id", text="Instance ID")
        self.table.heading("code", text="Course Code")
        self.table.heading("period", text="Period")
        self.table.pack(fill="x", padx=20, pady=10)

        tk.Button(
            self,
            text="Show Course Cost",
            command=self.show_course_cost,
            bg="black",
            fg="red",
            highlightbackground="red",
        ).pack(pady=10)

        tk.Button(
            self,
            text="Modify Student Numbers",
            command=self.open_edit_students_window,
            bg="black",
            fg="red",
            highlightbackground="red",
        ).pack(pady=5)

    # Here we first get the selected instance using focus(), then we call get course cost
    # to get the details so we can display them in a message box

    def show_course_cost(self):
        selected = self.table.focus()
        if not selected:
            messagebox.showwarning("Select Course", "Please select a course instance.")
            return

        try:
            instance_id = int(self.table.item(selected)["values"][0])
        except ValueError:
            messagebox.showerror("Invalid ID", "Selected course instance ID is invalid.")
            return

        try:
            dto = self.controller.get_course_cost(instance_id)
            if not dto:
                messagebox.showerror("Not Found", "Course instance not found.")
                return

            messagebox.showinfo(
                "Course Cost",

                f"""
                Course: {dto.course_code}
                Period: {dto.period}
                Students: {dto.num_students}

                Planned Cost: {dto.planned_cost:,.2f}
                Actual Cost: {dto.actual_cost:,.2f}
                """,
            )

        except Exception as e:
            messagebox.showerror("Error", str(e))

    # ==================== SECOND METHOD =========================

    def open_edit_students_window(self):
        selected = self.table.focus()
        if not selected:
            messagebox.showwarning("Select Course", "Please select a course instance.")
            return

        instance_id = int(self.table.item(selected)["values"][0])

        # Open the separate edit window
        EditStudentsView(self.controller, self, instance_id)