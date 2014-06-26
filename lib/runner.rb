require_relative 'dashboard.rb'

class Runner
	attr_accessor :dashboard

	def run_dashboard
		@dashboard = Dashboard.new
		@dashboard.display_welcome_message
		run(MainMenu)
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