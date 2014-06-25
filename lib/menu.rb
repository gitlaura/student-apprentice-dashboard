require_relative 'ui.rb'
require_relative 'validity.rb'
require_relative 'view_student.rb'
require_relative 'update_student.rb'
require_relative 'view_mentor.rb'
require_relative 'update_mentor.rb'
require_relative 'view_start_date.rb'
require_relative 'update_start_date.rb'

class Menu
	include UI, Validity
	attr_reader :title, :valid_menu_options, :selection

	def initialize(dashboard)
		@title = "Main Menu"
		@valid_menu_options = [
			{"Student Account" => StudentAccountMenu},
			{"Schedule (Coming Soon)" => :invalid},
			{"Progress (Coming Soon)" => :invalid},
			{"Knowledge (Coming Soon)" => :invalid},
			{"Exit Program" => :exit}
		]
	end

	def run
		display_menu
		@selection = get_menu_selection
		next_move = @valid_menu_options[@selection - 1].values[0]
	end

	def display_menu
		give("\n*#{@title}*")
		@valid_menu_options.each_with_index do |hash, i|
			give("#{i + 1}) #{hash.keys[0]}")
		end
		give("Please select a numeric option:")
	end

	def get_menu_selection
		@selection = receive.to_i
		if valid_integer?(@selection) == false
			give("\n**Must select one of the menu options. Try again.**")
			run
		end
		if valid_option?(@selection, @valid_menu_options) == false
			give("\n**Option not available. Try again.**")
			run
		end
		@selection
	end
end

class StudentAccountMenu < Menu
	def initialize(dashboard)
		@title = "Student Account Menu"
		@valid_menu_options = [
			{"Name" => NameMenu},
			{"Mentor" => MentorMenu},
			{"Start Date" => StartDateMenu},
			{"Expected End Date" => :invalid},
			{"Back to Main Menu" => Menu}
		]
	end
end

class NameMenu < Menu
	def initialize(dashboard)
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
	def initialize(dashboard)
		@title = "Mentor Menu"
		@valid_menu_options = [
			{"View Mentor" => ViewMentor},
			{"Update Mentor" => UpdateMentor},
			{"Go Back" => StudentAccountMenu},
			{"Back to Main Menu" => Menu}
		]
	end
end

class AddMentorMenu < Menu
	def initialize(dashboard)
		@title = "Options"
		@valid_menu_options = [
			{"Add Mentor" => UpdateMentor},
			{"Go Back" => StudentAccountMenu}
		]
	end
end

class BackToStudentAccountMenu < Menu
	def initialize(dashboard)
		@title = "Options"
		@valid_menu_options = [
			{"Go Back" => StudentAccountMenu},
			{"Back to Main Menu" => Menu}
		]
	end
end

class StartDateMenu < Menu
	def initialize(dashboard)
		@title = "Start Date Menu"
		@valid_menu_options = [
			{"View Start Date" => ViewStartDate},
			{"Update Start Date" => UpdateStartDate},
			{"Go Back" => StudentAccountMenu},
			{"Back to Main Menu" => Menu}
		]
	end
end

class AddStartDateMenu < Menu
	def initialize(dashboard)
		@title = "Start Date Menu"
		@title = "Options"
		@valid_menu_options = [
			{"Add Start Date" => UpdateStartDate},
			{"Go Back" => StudentAccountMenu}
		]
	end
end