class Runner
	attr_accessor :dashboard, :student

	def initialize
		@dashboard = Dashboard.new
		run_dashboard
	end

	def run_dashboard
		@first= @dashboard.get_student_first_name
		@last = @dashboard.get_student_last_name
		@student = Student.new(@first, @last)
	end
end