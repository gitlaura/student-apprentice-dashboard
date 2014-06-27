class EndDateMenu < Menu
	def initialize(dashboard)
		@title = "End Date Menu"
		@valid_menu_options = [
			{"View End Date" => ViewEndDate},
			{"Update End Date" => UpdateEndDate},
			{"Go Back" => StudentAccountMenu},
			{"Back to Main Menu" => MainMenu}
		]
	end
end