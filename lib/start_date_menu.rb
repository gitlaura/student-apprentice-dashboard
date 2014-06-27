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