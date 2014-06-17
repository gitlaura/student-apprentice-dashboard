require_relative 'ui.rb'

class MessageCenter
	attr_reader :ui

	def initialize
		@ui = UI.new
	end

	def get_menu_selection
		selection = @ui.receive.to_i 
	end

	def get_info
		info = @ui.receive
	end

	def get_first_name
		message = "What is your first name? "
		@ui.give(message)
	end

	def get_last_name
		message = "What is your last name? "
		@ui.give(message)
	end

	def welcome_message(first, last)
		message = "Welcome to #{first} #{last}'s Dashboard!"
		@ui.give(message)
	end

	def exit
		message = "Goodbye!"
		@ui.give(message)
	end

	def display_invalid_selection_message
		message = "Must select a number. Please try again."
		@ui.give(message)
	end

	def display_invalid_string_message
		message = "Must enter some text. Please try again"
		@ui.give(message)
	end

	def display_option_not_available_message
		message = "That option is not currently available. Please try again:"
		@ui.give(message)
	end

	def display_menu(menu_number)
		message = create_menu(menu_number)
		@ui.give(message)
	end

	def create_menu(menu_number)
		main_menu = ["Main Menu", "Student Account", "Schedule", "Progress", "Knowledge", "Exit Program"]
		student_account_menu = ["Student Account Menu", "Student Name", "Mentor Name", "Start Date", "Expected End Date", "Back to Main Menu"]
		
		valid_main_menu_options = [main_menu, student_account_menu]
		current_menu = valid_main_menu_options[menu_number-1]

		message = "Please select a numeric option from the #{current_menu[0]}:\n"
		i = 1
		until i == current_menu.length
			message << "#{i}) #{current_menu[i]} \n"
			i += 1
		end
		message
	end
end