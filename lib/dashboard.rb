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

	def get_name(student_or_mentor, first_or_last)
		@message_center.get_name_message(student_or_mentor, first_or_last)
		name = @message_center.get_info
		return name.capitalize if valid_string?(name)
		@message_center.display_invalid_string_message
		get_name(student_or_mentor, first_or_last)
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
		@student.first_name = get_name("student", "first")
		@student.last_name = get_name("student", "last")
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
		@mentor.first_name = get_name("mentor", "first")
		@mentor.last_name = get_name("mentor", "last")
	end

	def exit
		@message_center.exit
	end
end