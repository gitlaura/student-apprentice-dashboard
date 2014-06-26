class ViewDailySchedule
	include UI

	attr_accessor :days, :schedule

	def initialize(dashboard)
		@days = dashboard.daily_schedule.days
	end

	def run
		if @days.nil?
			give("\nDaily Schedule has not been added yet.")
			return AddDailyScheduleMenu
		end
		display_schedule
		BackToScheduleMenu
	end

	def display_schedule
		i = 0
		@schedule = ""
		until i == 5 do
			if @days[i] != "No"
				if i == 3
					@schedule << @days[i][0..1]
				else
					@schedule << @days[i][0]
				end
				@schedule << ", "
			end
			i += 1
		end
		@schedule = @schedule[0..-3]
		give("\nDaily Schedule: #{@schedule}")
	end
end