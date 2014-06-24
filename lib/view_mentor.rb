require_relative 'menu.rb'
require_relative 'dashboard.rb'

class ViewMentor
	include UI
	attr_accessor :first_name, :last_name

	def initialize(dashboard)
		@first_name = dashboard.mentor.first_name
		@last_name = dashboard.mentor.last_name
	end

	def run
		if @first_name.nil? || @last_name.nil?
			give("\nMentor has not been added yet.")
			return AddMentorMenu
		end
		display_name
		BackToStudentAccountMenu
	end

	def display_name
		give("\nMentor: #{@first_name} #{@last_name}")
	end
end