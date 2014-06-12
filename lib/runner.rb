require_relative 'dashboard.rb'
require_relative 'student.rb'

class Runner
	attr_accessor :dashboard, :student

	def initialize
		@dashboard = Dashboard.new
		run_dashboard
	end

	def run_dashboard
		first = @dashboard.get_student_first_name
		last = @dashboard.get_student_last_name
		@student = Student.new(first, last)
		@dashboard.display_welcome_message(first,last)

		next_move = "Invalid"
		while next_move == "Invalid"
			selection = @dashboard.get_valid_menu_selection("Main")
			next_move = @dashboard.act_on_menu(selection, "Main")
			@dashboard.option_not_available if next_move == "Invalid"
		end

		@dashboard.exit_program if next_move == "Exit"
	end
end

runner = Runner.new