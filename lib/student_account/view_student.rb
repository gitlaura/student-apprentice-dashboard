class ViewStudent
	include UI

	attr_accessor :first_name, :last_name

	def initialize(dashboard)
		@first_name = dashboard.student.first_name
		@last_name = dashboard.student.last_name
	end

	def run
		display_name
		BackToStudentAccountMenu
	end

	def display_name
		give("\nStudent Name: #{@first_name} #{@last_name}")
	end
end