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

	def get_first_name(person_type)
		message = "What is the #{person_type}'s first name? "
		@ui.give(message)
	end

	def get_last_name(person_type)
		message = "What is the #{person_type}'s last name? "
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
		message = "--\nThat option is not currently available. Please try again:\n--"
		@ui.give(message)
	end

	def display_not_added_yet_message(thing_not_added)
		message = "A #{thing_not_added} has not been added yet."
		@ui.give(message)
	end

	def display_name(person_type, first, last)
		message = "#{person_type}: #{first} #{last}"
		@ui.give(message)
	end

	def display_menu(menu_number)
		message = create_menu(menu_number)
		@ui.give(message)
	end

	def create_menu(menu_number)
		back_to_student_account_menu = ["Where would you like to go?", "Back to Student Account", "Back to Main Menu"]
		add_mentor_menu = ["Where would you like to go?", "Add Mentor", "Back to Student Account"]
		add_student_menu = ["Where would you like to go?", "Add Student", "Back to Student Account"]
		main_menu = ["Main Menu", "Student Account", "Schedule", "Progress", "Knowledge", "Exit Program"]
		student_account_menu = ["Student Account Menu", "Student Name", "Mentor Name", "Start Date", "Expected End Date", "Back to Main Menu"]
		student_name_menu = ["Student Name Menu", "View Student Name", "Update Student Name", "Go Back", "Back to Main Menu"]
		mentor_menu = ["Mentor Menu", "View Mentor", "Update Mentor", "Go Back", "Back to Main Menu"]

		valid_main_menu_options = [main_menu, student_account_menu, student_name_menu, mentor_menu, add_student_menu, add_mentor_menu, back_to_student_account_menu]
		current_menu = valid_main_menu_options[menu_number-1]

		message = "*#{current_menu[0]}*\n"
		i = 1
		until i == current_menu.length
			message << "#{i}) #{current_menu[i]} \n"
			i += 1
		end
		message << "Please select a number:"
	end
end