require_relative 'menu.rb'
require_relative 'student.rb'
require_relative 'mentor.rb'
require_relative 'start_date.rb'
require_relative 'end_date.rb'
require_relative 'daily_schedule.rb'
require_relative 'view_student.rb'
require_relative 'update_student.rb'
require_relative 'view_mentor.rb'
require_relative 'update_mentor.rb'
require_relative 'view_start_date.rb'
require_relative 'update_start_date.rb'
require_relative 'view_end_date.rb'
require_relative 'update_end_date.rb'
require_relative 'view_daily_schedule.rb'
require_relative 'update_daily_schedule.rb'
require_relative 'ui.rb'
require_relative 'main_menu.rb'
require_relative 'student_account_menu.rb'
require_relative 'add_daily_schedule_menu.rb'
require_relative 'add_end_date_menu.rb'
require_relative 'add_mentor_menu.rb'
require_relative 'add_start_date_menu.rb'
require_relative 'back_to_schedule_menu.rb'
require_relative 'back_to_student_account_menu.rb'
require_relative 'daily_schedule_menu.rb'
require_relative 'end_date_menu.rb'
require_relative 'mentor_menu.rb'
require_relative 'name_menu.rb'
require_relative 'schedule_menu.rb'
require_relative 'start_date_menu.rb'

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