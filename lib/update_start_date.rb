class UpdateStartDate
	include UI
	include Validity

	attr_accessor :dashboard

	def initialize(dashboard)
		@dashboard = dashboard
	end

	def run
		date = get_date
		@dashboard.start_date.month = date[0..1].to_i
		@dashboard.start_date.day = date[3..4].to_i
		@dashboard.start_date.year = date[6..9].to_i
		ViewStartDate
	end

	def get_date
		give("\nPlease enter the student's start date (mm/dd/yyyy):")
		input = receive
		return input if valid_date?(input) == true
		give("\n**Not a valid date.**")
		get_date
	end
end