require_relative 'ui.rb'

class MessageCenter
	attr_accessor :ui

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

	def display_menu(menu_type)
		if menu_type == "Main"
			message = write_main_menu
			@ui.give(message)
		end
	end

	def display_integer_message
		message = "Must select a number. Please try again."
		@ui.give(message)
	end

	def display_string_message
		message = "Must enter some text. Please try again"
		@ui.give(message)
	end

	def display_invalid_selection
		message = "That option is not currently available. Please try again:"
		@ui.give(message)
	end

	def write_main_menu
"Please select a numeric option from the Main Menu:
1) Student Account
2) Schedule
3) Progress
4) Knowledge
5) Exit Program"
	end
end