require_relative 'dashboard.rb'

class Runner
	attr_accessor :dashboard, :student

	def run_dashboard
		@dashboard = Dashboard.new
		display_welcome_message_with_name
		run(Menu)
	end

	def display_welcome_message_with_name
		@dashboard.update_student
		@dashboard.display_welcome_message
	end
	
	def run(menu_or_action)
		return exit if menu_or_action == :exit
		next_move = @dashboard.run(menu_or_action)
		run(next_move)
	end

	def exit
		@dashboard.exit
	end
end