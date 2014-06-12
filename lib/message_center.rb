class MessageCenter
	attr_accessor :ui

	def initialize
		@ui = UI.new
	end

	def self.welcome_message(first, last)
		welcome_message = "Welcome to #{first} #{last}'s Dashboard!"
		@ui.give(welcome_message)
	end

	def self.main_menu
		main_menu = "Please select an option from the Main Menu:
1) Student Accounts
2) Schedule
3) Progress
4) Knowledge
5) Exit Program"
		@ui.give(main_menu)
	end

	def self.invalid_selection
		invalid_selection = "That option is not currently available. Please try again:"
		@ui.give(invalid_selection)
	end
end