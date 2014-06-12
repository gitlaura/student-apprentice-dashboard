class Menu
	attr_accessor :selection, :valid_options, :exit_option

	def initialize
		@valid_options = [5]
		@exit_option = 5
	end

	def make_move(selection, menu_type)
		@selection = selection
		if menu_type == "Main"
			@valid_options = [5]
			@exit_option = 5
		end
		return "Invalid" if invalid?(@selection) == true
		return "Exit" if exit?(@selection) == true
	end

	def invalid?(selection)
		unless @valid_options.include?(selection)
			true
		end
	end	

	def exit?(selection)
		if selection == @exit_option
			true
		end
	end
end