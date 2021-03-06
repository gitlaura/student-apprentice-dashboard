require 'date'

class ViewStartDate
	include UI

	attr_accessor :month, :day, :year

	def initialize(dashboard)
		@month = dashboard.start_date.month
		@day = dashboard.start_date.day
		@year = dashboard.start_date.year
	end

	def run
		if @month.nil? || @day.nil?
			give("\nStart date has not been added yet.")
			return AddStartDateMenu
		end
		display_date
		BackToStudentAccountMenu
	end

	def display_date
		give("\nStart Date: #{@month}/#{@day}/#{@year}")
	end
end