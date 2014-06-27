class AddMentorMenu < Menu
	def initialize(dashboard)
		@title = "Options"
		@valid_menu_options = [
			{"Add Mentor" => UpdateMentor},
			{"Go Back" => StudentAccountMenu}
		]
	end
end