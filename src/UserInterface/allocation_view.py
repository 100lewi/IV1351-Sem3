import tkinter as tk
from tkinter import messagebox, ttk

class AllocationView(tk.Toplevel):
    def __init__(self, controller, parent, editable=False):
        super().__init__(parent)

        self.controller = controller
        self.editable = editable

        self.title("Course Costs")
        self.configure(bg="black")
        self.geometry("700x500")

        