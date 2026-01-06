import tkinter as tk

class TeachingActivityView(tk.Toplevel):
	def __init__(self, controller, parent, editable=False):
		super().__init__(parent)

		self.controller = controller
		self.editable = editable

		self.title("Add Teaching Activity")
		self.configure(bg="black")
		self.geometry("700x500")