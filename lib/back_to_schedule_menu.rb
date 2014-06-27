class BackToScheduleMenu < Menu
	def initialize(dashboard)
		@title = "Options"
		@valid_menu_options = [
			{"Go Back" => ScheduleMenu},
			{"Back to Main Menu" => MainMenu}
		]
	end
end