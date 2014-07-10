require_relative 'dashboard.rb'
require_relative 'menus/menu.rb'

class Runner
	attr_accessor :dashboard

	def run_dashboard
		@dashboard = Dashboard.new
		@dashboard.display_welcome_message
		run
	end
	
	def run(menu_or_action = MainMenu)
		return exit if menu_or_action == :exit
		run(next_move(menu_or_action))
	end

	def next_move(menu_or_action)
		@dashboard.run(menu_or_action)
	end

	def exit
		@dashboard.exit
	end
end