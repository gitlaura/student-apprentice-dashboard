require_relative 'menu.rb'

class AddDailyScheduleMenu < Menu
	def initialize(dashboard)
		@title = "Options"
		@valid_menu_options = [
			{"Add Daily Schedule" => UpdateDailySchedule},
			{"Go Back" => ScheduleMenu}
		]
	end
end