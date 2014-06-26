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