import tkinter as tk
from tkinter import messagebox

from src.UserInterface.activity_view import TeachingActivityView
from src.UserInterface.planned_activity import PlannedActivityView
from src.UserInterface.course_cost_view import CourseCostView
from src.UserInterface.allocation_view import AllocationView


class MainWindow:
    def __init__(self, controller):
        self.controller = controller

        self.root = tk.Tk()
        self.root.title("Course Management System")
        self.root.configure(bg="black")
        self.root.geometry("420x520")

        self._build_layout()

    def _build_layout(self):
        title = tk.Label(
            self.root,
            text="Course Management",
            bg="black",
            fg="red",
            font=("Helvetica", 18, "bold"),
        )
        title.pack(pady=(20, 30))

        self._menu_button("View Course Costs", self.open_course_costs)
        self._menu_button("Modify Activity Allocation", self.modify_activity_allocation)
        self._menu_button("Add Teaching Activity", self.add_teaching_activity)
        self._menu_button("Add Planned Activity", self.add_planned_activity)
        self._menu_button("RESET DATABASE", self.reset_database)

        tk.Button(
            self.root,
            text="Exit",
            command=self.root.destroy,
            bg="black",
            fg="red",
            highlightbackground="red",
            width=28,
        ).pack(pady=(30, 10))

    def _menu_button(self, text, command):
        tk.Button(
            self.root,
            text=text,
            command=command,
            bg="black",
            fg="red",
            activebackground="red",
            activeforeground="black",
            highlightbackground="red",
            width=28,
        ).pack(pady=8)

    def run(self):
        self.root.mainloop()

    # ===============Navigation====================

    def open_course_costs(self):
       CourseCostView(self.controller, self.root)

    def modify_activity_allocation(self):
        AllocationView(self.controller, self.root)

    def add_teaching_activity(self):
        TeachingActivityView(self.controller, self.root)

    def add_planned_activity(self):
       PlannedActivityView(self.controller, self.root)

    def reset_database(self):
        confirm = messagebox.askyesno(
            "Confirm Reset",
            "This will RESET the database.\nAre you absolutely sure?",
        )
        if not confirm:
            return

        try:
            self.controller.reset_db()
            messagebox.showinfo("Success", "Database reset successfully.")
        except Exception as e:
            messagebox.showerror("Error", str(e))
