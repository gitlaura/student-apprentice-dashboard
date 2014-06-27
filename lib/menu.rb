require_relative 'ui.rb'
require_relative 'validity.rb'

class Menu
	include UI, Validity
	attr_accessor :title, :valid_menu_options, :selection

	def initialize(dashboard)
	end

	def run
		display_menu
		@selection = get_menu_selection
		next_move = @valid_menu_options[@selection - 1].values[0]
	end

	def display_menu
		give("\n*#{@title}*")
		@valid_menu_options.each_with_index do |hash, menu_number|
			give("#{menu_number + 1}) #{hash.keys[0]}")
		end
		give("Please select a numeric option:")
	end

	def get_menu_selection
		@selection = receive.to_i
		if valid_integer?(@selection) == false
			give("\n**Must select one of the menu options. Try again.**")
			run
		end
		if valid_option?(@selection, @valid_menu_options) == false
			give("\n**Option not available. Try again.**")
			run
		end
		@selection
	end
end