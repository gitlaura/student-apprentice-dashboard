class UpdateEndDate
	include UI
	include Validity

	attr_accessor :dashboard, :month, :day, :year

	def initialize(dashboard)
		@dashboard = dashboard
	end

	def run
		get_date
		@dashboard.end_date.month = @month
		@dashboard.end_date.day = @day
		@dashboard.end_date.year = @year
		ViewEndDate
	end

	def get_date
		give("\nPlease enter the student's start date (mm/dd/yyyy):")
		input = receive
		return create_date(input) if valid_date?(input) == true
		give("\n**Not a valid date.**")
		get_date
	end
	
	def create_date(input)
		@month, @day, @year = input.split('/').map{|n| n.to_i }
	end
end