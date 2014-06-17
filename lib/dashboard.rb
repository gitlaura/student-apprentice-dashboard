require_relative 'message_center.rb'
require_relative 'menu.rb'
require_relative 'student.rb'

class Dashboard
	attr_accessor :student
	attr_reader :message_center

	def initialize
		@message_center = MessageCenter.new
		@menu = Menu.new
	end

	def get_student_first_name
		@message_center.get_first_name
		get_valid_info.capitalize
	end

	def get_student_last_name
		@message_center.get_last_name
		get_valid_info.capitalize
	end

	def create_student(first, last)
		@student = Student.new(first, last)
	end

	def valid?
		!(@info =~ /^[-+]?[0-9]+$/) && @info.length > 0
	end

	def get_valid_info
		@info = @message_center.get_info
		return @info if valid?
		@message_center.display_string_message
		get_valid_info
	end

	def display_welcome_message(first, last)
		@message_center.welcome_message(first, last)
	end

	def get_menu_number(menu_type)
		@menu.get_menu_number(menu_type)
	end

	def get_valid_menu_selection(menu_number)
		@message_center.display_menu(menu_number)
		selection = @message_center.get_menu_selection
		return selection if selection > 0
		@message_center.display_invalid_selection_message
		get_valid_menu_selection(menu_number)
	end

	def make_selection(menu_number, selection)
		@menu.make_move(menu_number, selection)
	end

	def option_not_available
		@message_center.display_invalid_selection
	end

	def exit_program
		@message_center.exit
	end
end