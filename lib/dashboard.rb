class Student
	def initialize
		puts ""
		puts "Welcome to your 8th Light Student Dashboard!"
		first_name
		last_name
	end

	def first_name
		print "Please enter your first name: "
		firstname = gets.chomp
		print firstname.is_a?(String)
		if firstname.nil?
			puts "Looks like you forgot to add your first name. Try again."
			first_name
		end
		@first_name = firstname
	end

	def last_name
		print "Please enter your last name: "
		lastname = gets.chomp
		if lastname.nil?
			last_name
		end
		@last_name = lastname
	end
end

Student.new