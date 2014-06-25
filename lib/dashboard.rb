require_relative 'message_center.rb'
require_relative 'menu.rb'
require_relative 'student.rb'
require_relative 'mentor.rb'
require_relative 'runner.rb'
require_relative 'start_date.rb'
require_relative 'end_date.rb'
require_relative 'daily_schedule.rb'

class Dashboard
	attr_accessor :student, :mentor, :start_date, :end_date, :daily_schedule
	attr_reader :message_center, :obj

	def initialize
		@message_center = MessageCenter.new
		@menu = Menu.new(self)
		@mentor = Mentor.new
		@student = Student.new
		@start_date = StartDate.new
		@end_date = EndDate.new
		@daily_schedule = DailySchedule.new
	end

	def display_welcome_message
		@message_center.welcome_message(@student.first_name, @student.last_name)
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

	def run(object)
		@obj = object.new(self)
		@obj.run
	end

	def update_student
		@student.first_name = get_name("student", "first")
		@student.last_name = get_name("student", "last")
	end

	def exit
		@message_center.exit
	end
end