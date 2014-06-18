class MenuSelector
	attr_accessor :menus, :mentor

	def initialize
		@menus = {
			:main_menu => 					1,
			:student_account_menu => 		2,
			:student_name_menu => 			3,
			:mentor_menu => 				4,
			:add_student_menu =>			5,
			:add_mentor_menu => 			6,
			:back_to_student_account_menu => 7
		}
	end

	def get_menu_number(menu_type)
		@menus[menu_type]
	end

	def make_move(menu_number, selection)
		back_to_student_account_menu = [:student_account_menu, :main_menu]
		add_mentor_menu = [:update_mentor, :student_account_menu]
		add_student_menu = [:update_student, :student_account_menu]
		student_name_menu = [:view_student_name, :update_student_name, :student_account_menu, :main_menu]
		mentor_menu = [:view_mentor, :update_mentor, :student_account_menu, :main_menu]
		student_account_menu = [:student_name_menu, :mentor_menu, :invalid, :invalid, :main_menu]
		main_menu = [:student_account_menu, :invalid, :invalid, :invalid, :exit]
		
		valid_current_menu_options = [
			main_menu, student_account_menu, 
			student_name_menu, mentor_menu,
			add_student_menu, add_mentor_menu, 
			back_to_student_account_menu
		]
		
		current_menu = valid_current_menu_options[menu_number-1]

		return :invalid if invalid_selection?(current_menu, selection)
			
		menu_index = selection - 1
		next_move = current_menu[menu_index]
	end

	def invalid_selection?(current_menu, selection)
		if selection > current_menu.length
			true
		end
	end
end