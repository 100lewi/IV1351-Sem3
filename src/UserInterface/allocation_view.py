import tkinter as tk
from tkinter import messagebox, ttk
from src.UserInterface.GUIutils import utilsGuI


class AllocationView(tk.Toplevel):
	def __init__(self, controller, parent, editable=False):
		super().__init__(parent)

		self.controller = controller
		self.editable = editable

		self.title("Allocate/Deallocate teachers")
		self.configure(bg="black")
		self.geometry("700x500")
		utilsGuI.build_inputs(self)

	def build_table(self):
		self.table = ttk.Treeview(self, columns=("id", "code", "period"), show="headings")
		self.table.heading("id", text="Instance ID")
		self.table.heading("code", text="Course Code")
		self.table.heading("period", text="Period")
		self.table.pack(fill="x", padx=20, pady=10)

		tk.Button(
			self,
			text="Allocate Teacher",
			#command=self.allocate_teacher,
			bg="black",
			fg="red",
			highlightbackground="red",
		).pack(pady=10)

		tk.Button(
			self,
			text="Deallocate Teacher",
			#command=self.deallocate_teacher,
			bg="black",
			fg="red",
			highlightbackground="red",
		).pack(pady=5)