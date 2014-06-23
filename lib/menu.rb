require_relative 'ui.rb'

class Menu
	include UI
	attr_reader :title, :valid_menu_options

	def initialize
		@title = "Main Menu"
		@valid_menu_options = [
			{"Student Account" => StudentAccountMenu},
			{"Schedule" => :invalid},
			{"Progress" => :invalid},
			{"Knowledge" => :invalid},
			{"Exit Program" => :exit}
		]
	end

	def run
		display_menu
		selection = receive.to_i
		if valid_integer?(selection) == false
			give("Must select one of the menu option numbers. Try again.")
			run
		elsif valid_option?(selection) == false
			give("Option not available. Try again.")
			run
		else
			next_move = @valid_menu_options[selection - 1].values[0]
		end
	end

	def display_menu
		give("*#{@title}*")
		@valid_menu_options.each_with_index do |hash, i|
			give("#{i + 1}) #{hash.keys[0]}")
		end
		give("Please select a numberic option:")
	end

	def valid_integer?(selection)
		return false if selection < 1 || selection > @valid_menu_options.length
	end

	def valid_option?(selection)
		return false if @valid_menu_options[selection - 1].values[0] == :invalid
	end
end

class StudentAccountMenu < Menu
	def initialize
		@title = "Student Account Menu"
		@valid_menu_options = [
			{"Student's Name" => NameMenu},
			{"Student's Mentor" => MentorMenu},
			{"Expected Start Date" => :invalid},
			{"Expected End Dare" => :invalid},
			{"Back to Main Menu" => Menu}
		]
	end
end

class NameMenu < Menu
	def initialize
		@title = "Student Menu"
		@valid_menu_options = [
			{"View Student" => ViewStudent},
			{"Update Student" => UpdateStudent},
			{"Go Back" => StudentAccountMenu},
			{"Back to Main Menu" => Menu}
		]
	end
end

class MentorMenu < Menu
	def initialize
		@title = "Mentor Menu"
		@valid_menu_options = [
			{"View Mentor" => ViewMentor},
			{"Update Mentor" => UpdateMentor},
			{"Go Back" => StudentAccountMenu},
			{"Back to Main Menu" => Menu}
		]
	end
end

class ViewStudent
end

class UpdateStudent
end

class ViewMentor
end

class UpdateMentor
end