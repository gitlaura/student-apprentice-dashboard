require_relative 'dashboard.rb'
require_relative 'menu.rb'

class Runner
	attr_accessor :dashboard

	def run_dashboard
		@dashboard = Dashboard.new
		@dashboard.display_welcome_message
		run
	end

# Delete this
	
	def run(menu_or_action = MainMenu)
		return exit if menu_or_action == :exit
		next_move = @dashboard.run(menu_or_action)
		run(next_move)
	end

	def exit
		@dashboard.exit
	end
end
