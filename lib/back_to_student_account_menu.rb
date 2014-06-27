class BackToStudentAccountMenu < Menu
	def initialize(dashboard)
		@title = "Options"
		@valid_menu_options = [
			{"Go Back" => StudentAccountMenu},
			{"Back to Main Menu" => MainMenu}
		]
	end
end