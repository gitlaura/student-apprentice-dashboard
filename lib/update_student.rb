require_relative 'menu.rb'
require_relative 'dashboard.rb'

class UpdateStudent
	include UI
	include Validity

	attr_accessor :dashboard

	def initialize(dashboard)
		@dashboard = dashboard
	end

	def run
		@dashboard.student.first_name = get_name("first").capitalize
		@dashboard.student.last_name = get_name("last").capitalize
		ViewStudent
	end

	def get_name(first_or_last)
		give("\nEnter the student's #{first_or_last} name:")
		name = receive
		return name if valid_string?(name) == true
		give("Must enter some text.")
		get_name(first_or_last)
	end
end