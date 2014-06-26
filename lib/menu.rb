require_relative 'ui.rb'
require_relative 'validity.rb'

class Menu
	include UI, Validity
	attr_reader :title, :valid_menu_options, :selection

	def initialize(dashboard)
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

class MainMenu < Menu
	def initialize(dashboard)
		@title = "Main Menu"
		@valid_menu_options = [
			{"Student Account" => StudentAccountMenu},
			{"Schedule" => ScheduleMenu},
			{"Progress (Coming Soon)" => :invalid},
			{"Knowledge (Coming Soon)" => :invalid},
			{"Exit Program" => :exit}
		]
	end
end

class StudentAccountMenu < Menu
	def initialize(dashboard)
		@title = "Student Account Menu"
		@valid_menu_options = [
			{"Name" => NameMenu},
			{"Mentor" => MentorMenu},
			{"Start Date" => StartDateMenu},
			{"Expected End Date" => EndDateMenu},
			{"Back to Main Menu" => MainMenu}
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
			{"Back to Main Menu" => MainMenu}
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
			{"Back to Main Menu" => MainMenu}
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
			{"Back to Main Menu" => MainMenu}
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
			{"Back to Main Menu" => MainMenu}
		]
	end
end

class AddStartDateMenu < Menu
	def initialize(dashboard)
		@title = "Options"
		@valid_menu_options = [
			{"Add Start Date" => UpdateStartDate},
			{"Go Back" => StudentAccountMenu}
		]
	end
end

class EndDateMenu < Menu
	def initialize(dashboard)
		@title = "End Date Menu"
		@valid_menu_options = [
			{"View End Date" => ViewEndDate},
			{"Update End Date" => UpdateEndDate},
			{"Go Back" => StudentAccountMenu},
			{"Back to Main Menu" => MainMenu}
		]
	end
end

class AddEndDateMenu < Menu
	def initialize(dashboard)
		@title = "Options"
		@valid_menu_options = [
			{"Add End Date" => UpdateEndDate},
			{"Go Back" => StudentAccountMenu}
		]
	end
end

class ScheduleMenu < Menu
	def initialize(dashboard)
		@title = "Schedule Menu"
		@valid_menu_options = [
			{"Daily Schedule" => DailyScheduleMenu},
			{"View Time Lapsed (Coming Soon)" => :invalid},
			{"Back to Main Menu" => MainMenu}
		]
	end
end

class DailyScheduleMenu < Menu
	def initialize(dashboard)
		@title = "Daily Schedule Menu"
		@valid_menu_options = [
			{"View Daily Schedule" => ViewDailySchedule},
			{"Update Daily Schedule" => UpdateDailySchedule},
			{"Go Back" => ScheduleMenu},
			{"Back to Main Menu" => MainMenu}
		]
	end
end

class AddDailyScheduleMenu < Menu
	def initialize(dashboard)
		@title = "Options"
		@valid_menu_options = [
			{"Add Daily Schedule" => UpdateDailySchedule},
			{"Go Back" => ScheduleMenu}
		]
	end
end

class BackToScheduleMenu < Menu
	def initialize(dashboard)
		@title = "Options"
		@valid_menu_options = [
			{"Go Back" => ScheduleMenu},
			{"Back to Main Menu" => MainMenu}
		]
	end
end