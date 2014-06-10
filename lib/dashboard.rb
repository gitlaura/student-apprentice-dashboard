require 'student.rb'
require 'interface.rb'
require 'menu.rb'

class Dashboard
	attr_accessor :student, :menu, :interface
	attr_accessor :output_message, :menu_selection, :student_first_name, :student_last_name

	def initialize
		@interface = Interface.new
		get_student_name
		@student_first_name = student.student_first_name
		@student_last_name = student.student_last_name
		@menu = Menu.new
		welcome
	end

	def get_student_name
		first = ""
		last = ""
		until first.length > 0
			@output_message = "Please enter your first name:"
			interface.give(output_message)
			first = interface.receive
		end
		until last.length > 0
			@output_message = "Please enter your last name:"
			interface.give(output_message)
			last = interface.receive
		end
		@student = Student.new(first, last)
	end

	def welcome
		@output_message = "Welcome to #{student.student_first_name} #{student.student_last_name}'s Student Dashboard!"
		interface.give(@output_message)
		open_main_menu
	end

	def open_main_menu
		@output_message = menu.show_main_menu
		interface.give(@output_message)
		get_menu_selection
	end

	def get_menu_selection
		@menu_selection = interface.receive
		selection_action(@menu_selection)
	end

	def selection_action(selection)
		if selection == "5"
			end_program
		else
			menu.change_menu(selection)
		end
	end

	def end_program
		@output_message = "Goodbye!"
		interface.give(@output_message)
		return "Goodbye!"
	end
end