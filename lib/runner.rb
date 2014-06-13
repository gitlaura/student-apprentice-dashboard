require_relative 'dashboard.rb'

class Runner
	attr_accessor :dashboard, :student

	def run_dashboard
		@dashboard = Dashboard.new
		display_welcome_message
	end

	def display_welcome_message
		first = @dashboard.get_student_first_name
		last = @dashboard.get_student_last_name
		@dashboard.create_student(first, last)
		@dashboard.display_welcome_message(first,last)
		run_menu("Main")
	end
	
	def run_menu(menu_type)
		next_move = "Invalid"
		while next_move == "Invalid"
			selection = @dashboard.get_valid_menu_selection(menu_type)
			next_move = @dashboard.act_on_menu(selection, menu_type)
			@dashboard.option_not_available if next_move == "Invalid"
		end
		exit_program if next_move == "Exit"
	end

	def exit_program
		@dashboard.exit_program
	end
end