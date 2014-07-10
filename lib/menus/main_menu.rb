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