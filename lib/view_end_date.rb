require_relative 'menu.rb'
require_relative 'dashboard.rb'
require 'date'

class ViewEndDate
	include UI

	attr_accessor :month, :day, :year

	def initialize(dashboard)
		@month = dashboard.end_date.month
		@day = dashboard.end_date.day
		@year = dashboard.end_date.year
	end

	def run
		if @month.nil? || @day.nil?
			give("\nEnd date has not been added yet.")
			return AddEndDateMenu
		end
		display_date
		BackToStudentAccountMenu
	end

	def display_date
		give("\nEnd Date: #{Date::MONTHNAMES[@month]} #{@day}, #{@year}")
	end
end