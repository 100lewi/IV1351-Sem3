import tkinter as tk
from tkinter import messagebox
from src.UserInterface.GUIutils.utilsGuI import build_planned_activity

class PlannedActivityView(tk.Toplevel):
    def __init__(self, controller, parent, editable=False):
        super().__init__(parent)

        self.controller = controller
        self.editable = editable

        self.title("Add Teaching Activity")
        self.configure(bg="black")
        self.geometry("700x500")

        tk.Label(
            self,
            text="Add New Planned Activity",
            bg="black",
            fg="red",
            font=("Helvetica", 16, "bold")
        ).pack(pady=(20, 20))

        button_frame = tk.Frame(self, bg="black")
        button_frame.pack(pady=10)

        tk.Button(
            button_frame,
            text="Add Activity",
            width=35,
            command=self.show_activity_frame,
            bg="black",
            fg="red",
            highlightbackground="red",
            font=("Helvetica", 12)
        ).pack(pady=(0, 10))

        # frame placeholder
        self.activity_frame = None

    def show_activity_frame(self):
        """Build the activity input frame only once."""
        if self.activity_frame is None:
            self.activity_frame = tk.Frame(self, bg="black")
            self.activity_frame.pack(pady=20, padx=20, fill="x")
            build_planned_activity(self.activity_frame, self)
        else:
            self.activity_frame.lift() 