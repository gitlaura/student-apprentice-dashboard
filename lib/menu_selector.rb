class MenuSelector
	attr_accessor :menus_options

	def initialize
		@menus_options = [
			[[:main_menu, :student_account_menu, :invalid, :invalid, :invalid, :exit],
			["Main Menu", "Student Account", "Schedule (Coming soon)", "Progress (Coming soon)", "Knowledge (Coming soon)", "Exit Program"]],
			[[:student_account_menu, :student_name_menu, :mentor_menu, :invalid, :invalid, :main_menu],
			["Student Account Menu", "Student Name", "Mentor Name", "Start Date", "Expected End Date", "Back to Main Menu"]],
			[[:student_name_menu, :view_student, :update_student, :student_account_menu, :main_menu],
			["Student Name Menu", "View Student Name", "Update Student Name", "Go Back", "Back to Main Menu"]],
			[[:mentor_menu, :view_mentor, :update_mentor, :student_account_menu, :main_menu],
			["Mentor Menu", "View Mentor", "Update Mentor", "Go Back", "Back to Main Menu"]],
			[[:add_student_menu, :update_student, :student_account_menu],
			["Options", "Add Student", "Back to Student Account"]],
			[[:add_mentor_menu, :update_mentor, :student_account_menu],
			["Options", "Add Mentor", "Back to Student Account"]],
			[[:back_to_student_account_menu, :student_account_menu, :main_menu],
			["Options", "Back to Student Account", "Back to Main Menu"]]
		]
	end

	def get_menu_number(menu_type)
		@menus_options.each_with_index do |array, index|
			if array[0][0] == menu_type
				return index
			end
		end
	end

	def make_move(menu_number, selection)
		current_menu = @menus_options[menu_number][0]
		return :invalid if invalid_selection?(current_menu, selection)
		next_move = current_menu[selection]
	end

	def invalid_selection?(current_menu, selection)
		if selection > current_menu.length - 1
			true
		end
	end
end