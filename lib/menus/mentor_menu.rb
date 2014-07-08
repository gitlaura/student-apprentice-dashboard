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