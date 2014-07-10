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