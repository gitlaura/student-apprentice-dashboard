require_relative 'ui.rb'

class MessageCenter
	include UI

	def get_info
		info = receive
	end

	def get_name_message(student_or_mentor, first_or_last)
		give("What is the #{student_or_mentor}'s #{first_or_last} name? ")
	end

	def welcome_message(first, last)
		give("Welcome to #{first} #{last}'s Dashboard!")
	end

	def exit
		give("Goodbye!")
	end

	def display_invalid_string_message
		give("Text only. Please try again")
	end

	def display_not_added_yet_message(thing_not_added)
		give("A #{thing_not_added} has not been added yet.")
	end

	def display_name(person_type, first, last)
		give("#{person_type}: #{first} #{last}")
	end
end