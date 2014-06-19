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
		@ui.give("What is the #{person_type}'s first name? ")
	end

	def get_last_name(person_type)
		@ui.give("What is the #{person_type}'s last name? ")
	end

	def welcome_message(first, last)
		@ui.give("Welcome to #{first} #{last}'s Dashboard!")
	end

	def exit
		@ui.give("Goodbye!")
	end

	def display_invalid_selection_message
		@ui.give("Must select a number. Please try again.")
	end

	def display_invalid_string_message
		@ui.give("Text only. Please try again")
	end

	def display_option_not_available_message
		@ui.give("--\nThat option is not currently available. Please try again:\n--")
	end

	def display_not_added_yet_message(thing_not_added)
		@ui.give("A #{thing_not_added} has not been added yet.")
	end

	def display_name(person_type, first, last)
		@ui.give("#{person_type}: #{first} #{last}")
	end

	def display_menu(menu_number)
		@ui.give(create_menu(menu_number))
	end

	def create_menu(menu_number)
		back_to_student_account_menu = ["Options", "Back to Student Account", "Back to Main Menu"]
		add_mentor_menu = ["Options", "Add Mentor", "Back to Student Account"]
		add_student_menu = ["Options", "Add Student", "Back to Student Account"]
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