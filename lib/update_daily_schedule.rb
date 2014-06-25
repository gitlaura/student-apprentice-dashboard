require_relative 'menu.rb'
require_relative 'dashboard.rb'

class UpdateDailySchedule
	include UI
	include Validity

	attr_accessor :days, :dashboard

	def initialize(dashboard)
		@dashboard = dashboard
		@days = []
	end

	def run
		@dashboard.daily_schedule.days = get_schedule
		ViewDailySchedule
	end

	def get_schedule
		weekdays = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]
		weekdays.each do |day|
			next_day = false
			until next_day == true do
				give("\nDo you work on #{day}? (Y/N)")
				response = receive.downcase
				if response == "y" || response == "yes"
					@days << day
					next_day = true
				elsif response == "n" || response == "no"
					@days << "No"
					next_day = true
				else
					give("\nNot a valid response.")
				end
			end
		end
		@days
	end
end