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