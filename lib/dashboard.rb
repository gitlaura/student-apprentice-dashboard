class Dashboard
	def initialize
		@mc = MessageCenter.new
		@menu = Menu.new
	end

	def get_student_first_name
		@mc.get_first_name
		@first = get_valid_info
	end

	def get_student_last_name
		@mc.get_last_name
		@last = get_valid_info
	end

	def get_valid_info
		@info = @mc.get_info
		return @info if @info.length > 0
		@mc.display_string_message
		get_valid_info
	end

	def display_welcome_message
		first = @student.student_first_name
		last = @student.student_last_name
		@mc.welcome_message(first, last)
	end

	def get_valid_menu_selection(menu_type)
		@mc.display_menu(menu_type)
		@selection = @mc.get_menu_selection
		return @selection if @selection > 0
		@mc.display_integer_message
		get_menu_selection(menu_type)
	end

	def act_on_main_menu(selection, menu_type)
		@menu.make_move(selection, menu_type)
	end

	def exit_program
		@mc.exit
	end
end