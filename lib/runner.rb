require_relative 'dashboard.rb'

class Runner
	attr_accessor :dashboard, :student

	def run_dashboard
		@dashboard = Dashboard.new
		display_welcome_message
		run_menu(:main_menu)
	end

	def display_welcome_message
		first = @dashboard.get_student_first_name
		last = @dashboard.get_student_last_name
		@dashboard.create_student(first, last)
		@dashboard.display_welcome_message(first,last)
	end
	
	def run_menu(menu_type)
		menu_number = @dashboard.get_menu_number(menu_type)
		selection = @dashboard.get_valid_menu_selection(menu_number)
		next_move = @dashboard.make_selection(menu_number, selection)
		exit_program if next_move == :exit
	end

	def exit_program
		@dashboard.exit_program
	end
end