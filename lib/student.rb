class Student
	attr_accessor :student_first_name, :student_last_name

	def initialize(first, last)
		@student_first_name = first
		@student_last_name = last
	end
end