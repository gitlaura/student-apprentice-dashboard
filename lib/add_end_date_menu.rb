class AddEndDateMenu < Menu
	def initialize(dashboard)
		@title = "Options"
		@valid_menu_options = [
			{"Add End Date" => UpdateEndDate},
			{"Go Back" => StudentAccountMenu}
		]
	end
end