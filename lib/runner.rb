class Runner
	def initialize
		@student = Student.new
	end

	def self.display_welcome_message
		first = @student.student_first_name
		last = @student.student_last_name
		MessageCenter.welcome_message(first, last)
	end
end