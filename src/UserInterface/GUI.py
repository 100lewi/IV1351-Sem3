import tkinter as tk

def clicked():
    print("Button was clicked")

root = tk.Tk()
root.configure(bg="black")

button_style = {
    "bg": "black",
    "fg": "red",
    "activebackground": "red",
    "activeforeground": "black",
    "bd": 2,
    "relief": "solid",
    "highlightthickness": 2,
    "highlightbackground": "red",
    "highlightcolor": "red",
    "width": 30
}


view_course_instance = tk.Button(root, text="View Course Costs", command=clicked, **button_style)
modify_a_course_instance = tk.Button(root, text="Modify a Course Instance", command=clicked, **button_style)
modify_activity_allocation = tk.Button(root, text="Modify Activity Allocation", command=clicked, **button_style)
add_new_teaching_activity = tk.Button(root, text="Add New Teaching Activity", command=clicked, **button_style)
add_new_planned_activity = tk.Button(root, text="Add New Planned Activity", command=clicked, **button_style)
reset_database = tk.Button(root, text="RESET DATABASE", command=clicked, **button_style)
exit_button = tk.Button(root, text="Exit", command=root.destroy, **button_style)

view_course_instance.pack(pady=8)
modify_a_course_instance.pack(pady=8)
modify_activity_allocation.pack(pady=8)
add_new_teaching_activity.pack(pady=8)
add_new_planned_activity.pack(pady=8)
reset_database.pack(pady=12)
exit_button.pack(pady=20)

root.mainloop()
