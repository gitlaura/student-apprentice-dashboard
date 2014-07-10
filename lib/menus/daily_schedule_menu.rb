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