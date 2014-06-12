class Menu
	attr_accessor :selection, :invalid_options, :exit_option

	def initialize
		@invalid_options = [1,2,3,4]
		@exit_option = 5
	end

	def make_move(selection)
		@selection = selection
		MessageCenter.invalid_selection if invalid?(@selection) == true
		"Exit" if exit?(@selection) == true
	end

	def invalid?(selection)
		if @invalid_options.include?(selection)
			true
		end
	end	

	def exit?(selection)
		if selection == @exit_option
			true
		end
	end
end