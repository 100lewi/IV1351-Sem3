import tkinter as tk
from tkinter import messagebox
from src.UserInterface.GUIutils.utilsGuI import build_allocation, build_deallocation

class AllocationView(tk.Toplevel):
    def __init__(self, controller, parent, editable=False):
        super().__init__(parent)

        self.controller = controller
        self.editable = editable

        self.title("Modify Activity Allocations")
        self.configure(bg="black")
        self.geometry("600x600")  

        # Title label
        tk.Label(
            self,
            text="Modify Activity Allocations",
            bg="black",
            fg="red",
            font=("Helvetica", 16, "bold")
        ).pack(pady=(20, 20))

        # Frame for buttons
        button_frame = tk.Frame(self, bg="black")
        button_frame.pack(pady=10)

        tk.Button(
            button_frame,
            text="Add Teacher",
            width=20,
            command=self.show_allocate_frame,
            bg="black",
            fg="red",
            highlightbackground="red",
            font=("Helvetica", 12)
        ).pack(pady=(0, 10))

        tk.Button(
            button_frame,
            text="Remove Teacher",
            width=20,
            command=self.show_deallocate_frame,
            bg="black",
            fg="red",
            highlightbackground="red",
            font=("Helvetica", 12)
        ).pack()

        self.allocate_frame = None
        self.deallocate_frame = None

    def show_allocate_frame(self):
        if self.allocate_frame is None:
            self.allocate_frame = tk.Frame(self, bg="black")
            self.allocate_frame.pack(pady=20, padx=20, fill="x")
            build_allocation(self.allocate_frame) 
        else:
            self.allocate_frame.lift()  

    def show_deallocate_frame(self):
        if self.deallocate_frame is None:
            self.deallocate_frame = tk.Frame(self, bg="black")
            self.deallocate_frame.pack(pady=20, padx=20, fill="x")
            build_deallocation(self.deallocate_frame) 
        else:
            self.deallocate_frame.lift()
