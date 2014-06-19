require_relative 'message_center.rb'
require_relative 'menu_selector.rb'
require_relative 'student_account_menu.rb'
require_relative 'runner.rb'

class Dashboard
	attr_accessor :student, :mentor, :menu_selector
	attr_reader :message_center

	def initialize
		@message_center = MessageCenter.new
		@menu_selector = MenuSelector.new
		@mentor = Mentor.new
		@student = Student.new
	end

	def get_first_name(person_type)
		@message_center.get_first_name(person_type)
		get_valid_info.capitalize
	end

	def get_last_name(person_type)
		@message_center.get_last_name(person_type)
		get_valid_info.capitalize
	end

	def get_valid_info
		info = @message_center.get_info
		return info if valid_string?(info)
		@message_center.display_invalid_string_message
		get_valid_info
	end

	def valid_string?(input)
		if input.length == 0
			false
		else
			input.each_char do |letter|
				return false if !(letter =~ /[a-z]/i)
			end
		end
	end

	def display_welcome_message
		@message_center.welcome_message(@student.first_name, @student.last_name)
	end

	def get_menu_number(menu_type)
		@menu_selector.get_menu_number(menu_type)
	end

	def get_valid_menu_selection(menu_number)
		@message_center.display_menu(menu_number)
		selection = @message_center.get_menu_selection
		return selection if selection > 0
		@message_center.display_invalid_selection_message
		get_valid_menu_selection(menu_number)
	end

	def make_selection(menu_number, selection)
		@menu_selector.make_move(menu_number, selection)
	end

	def option_not_available
		@message_center.display_option_not_available_message
	end

	def take_action(action)
		if action == (:view_student)
			view_student
		elsif action == (:update_student)
			update_student
			view_student
		elsif action == (:view_mentor)
			view_mentor
		elsif action == (:update_mentor)
			update_mentor
			view_mentor
		end
	end

	def view_student
		if @student.first_name.nil? || @student.last_name.nil? 
			@message_center.display_not_added_yet_message("student")
			:add_student_menu
		else
			@message_center.display_name("Student", @student.first_name, @student.last_name)
			:back_to_student_account_menu
		end
	end

	def update_student
		@student.first_name = get_first_name("student")
		@student.last_name = get_last_name("student")
	end

	def view_mentor
		if @mentor.first_name.nil? || @mentor.last_name.nil? 
			@message_center.display_not_added_yet_message("mentor")
			:add_mentor_menu
		else
			@message_center.display_name("Mentor", @mentor.first_name, @mentor.last_name)
			:back_to_student_account_menu
		end
	end

	def update_mentor
		@mentor.first_name = get_first_name("mentor")
		@mentor.last_name = get_last_name("mentor")
	end

	def exit_program
		@message_center.exit
	end
end