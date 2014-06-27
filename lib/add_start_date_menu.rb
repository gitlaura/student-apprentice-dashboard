class AddStartDateMenu < Menu
	def initialize(dashboard)
		@title = "Options"
		@valid_menu_options = [
			{"Add Start Date" => UpdateStartDate},
			{"Go Back" => StudentAccountMenu}
		]
	end
end