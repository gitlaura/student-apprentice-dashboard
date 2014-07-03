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
		give("\nPlease enter the student's end date (mm/dd/yyyy):")
		@month, @day, @year = receive.split('/').map{|n| n.to_i }
		return true if valid_date?(@year, @month, @day) == true
		give("\n**Not a valid date.**")
		get_date
	end
end