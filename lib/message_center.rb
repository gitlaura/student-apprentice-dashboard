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

	def get_name_message(student_or_mentor, first_or_last)
		@ui.give("What is the #{student_or_mentor}'s #{first_or_last} name? ")
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
		@ui.give("--\nThat option is not available. Please try again:\n--")
	end

	def display_not_added_yet_message(thing_not_added)
		@ui.give("A #{thing_not_added} has not been added yet.")
	end

	def display_name(person_type, first, last)
		@ui.give("#{person_type}: #{first} #{last}")
	end

	def display_menu(current_menu)
		@ui.give(create_menu(current_menu))
	end

	def create_menu(current_menu)	
		message = "*#{current_menu[0]}*\n"
		i = 1
		until i == current_menu.length
			message << "#{i}) #{current_menu[i]} \n"
			i += 1
		end
		message << "Please select a number:"
	end
end