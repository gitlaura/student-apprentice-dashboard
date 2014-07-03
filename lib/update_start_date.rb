class UpdateStartDate
	include UI
	include Validity

	attr_accessor :dashboard, :month, :day, :year

	def initialize(dashboard)
		@dashboard = dashboard
	end

	def run
		get_date
		@dashboard.start_date.month = @month
		@dashboard.start_date.day = @day
		@dashboard.start_date.year = @year
		ViewStartDate
	end

	def get_date
		give("\nPlease enter the student's start date (mm/dd/yyyy):")
		@month, @day, @year = receive.split('/').map{|n| n.to_i }
		return true if valid_date?(@year, @month, @day) == true
		give("\n**Not a valid date.**")
		get_date
	end
end