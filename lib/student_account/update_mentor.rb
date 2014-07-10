class UpdateMentor
	include UI
	include Validity

	attr_accessor :dashboard

	def initialize(dashboard)
		@dashboard = dashboard
	end

	def run
		@dashboard.mentor.first_name = get_name("first").capitalize
		@dashboard.mentor.last_name = get_name("last").capitalize
		ViewMentor
	end

	def get_name(first_or_last)
		give("\nEnter the mentor's #{first_or_last} name:")
		name = receive
		return name if valid_string?(name) == true
		give("Must enter some text.")
		get_name(first_or_last)
	end
end