require_relative 'menus/menu.rb'
require_relative 'student_account/student.rb'
require_relative 'student_account/mentor.rb'
require_relative 'student_account/start_date.rb'
require_relative 'student_account/end_date.rb'
require_relative 'schedule/daily_schedule.rb'
require_relative 'student_account/view_student.rb'
require_relative 'student_account/update_student.rb'
require_relative 'student_account/view_mentor.rb'
require_relative 'student_account/update_mentor.rb'
require_relative 'student_account/view_start_date.rb'
require_relative 'student_account/update_start_date.rb'
require_relative 'student_account/view_end_date.rb'
require_relative 'student_account/update_end_date.rb'
require_relative 'schedule/view_daily_schedule.rb'
require_relative 'schedule/update_daily_schedule.rb'
require_relative 'ui.rb'
require_relative 'menus/main_menu.rb'
require_relative 'menus/student_account_menu.rb'
require_relative 'menus/add_daily_schedule_menu.rb'
require_relative 'menus/add_end_date_menu.rb'
require_relative 'menus/add_mentor_menu.rb'
require_relative 'menus/add_start_date_menu.rb'
require_relative 'menus/back_to_schedule_menu.rb'
require_relative 'menus/back_to_student_account_menu.rb'
require_relative 'menus/daily_schedule_menu.rb'
require_relative 'menus/end_date_menu.rb'
require_relative 'menus/mentor_menu.rb'
require_relative 'menus/name_menu.rb'
require_relative 'menus/schedule_menu.rb'
require_relative 'menus/start_date_menu.rb'

class Dashboard
	include UI

	attr_accessor :student, :mentor, :start_date, :end_date, :daily_schedule

	def initialize
		@menu = Menu.new(self)
		@mentor = Mentor.new
		@student = Student.new
		@start_date = StartDate.new
		@end_date = EndDate.new
		@daily_schedule = DailySchedule.new
	end

	def display_welcome_message
		update_student
		give("\nWelcome to #{@student.first_name}'s #{@student.last_name} Dashboard!")
	end

	def update_student
		UpdateStudent.new(self).update_student_name
	end

	def run(object)
		object.new(self).run
	end

	def exit
		give("\nGoodbye!")
	end
end