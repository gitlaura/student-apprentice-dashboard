require_relative 'dashboard.rb'

class Runner
	attr_accessor :dashboard, :student

	def run_dashboard
		@dashboard = Dashboard.new
		display_welcome_message_with_name
		run_menu(:main_menu)
	end

	def display_welcome_message_with_name
		@dashboard.update_student
		@dashboard.display_welcome_message
	end
	
	def run_menu(menu_type)
		menu_number = @dashboard.get_menu_number(menu_type)
		selection = @dashboard.get_valid_menu_selection(menu_number)
		next_move = @dashboard.make_selection(menu_number, selection)
		if next_move == :exit 
			exit_program
		elsif next_move == :invalid
			option_not_available(menu_type)
		elsif 
			make_move(next_move)
		end
	end

	def make_move(next_move)
		if next_move.to_s.include?("menu")
			run_menu(next_move)
		else
			new_next_move = @dashboard.take_action(next_move)
			make_move(new_next_move)
		end
	end

	def option_not_available(menu_type)
		@dashboard.option_not_available
		run_menu(menu_type)
	end

	def exit_program
		@dashboard.exit_program
	end
end