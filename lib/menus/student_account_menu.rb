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