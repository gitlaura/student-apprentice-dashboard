module Validity
	def valid_string?(input)
		if input.length == 0
			return false
		else
			input.each_char do |letter|
				return false if !(letter =~ /[a-z]/i)
			end
		end
		true
	end

	def valid_integer?(selection)
		return false if selection < 1
		true
	end

	def valid_option?(selection, options)
		return false if selection > options.length || options[selection - 1].values[0] == :invalid
		true
	end

	def valid_date?(input)
		return false if input.length != 10
		return false if input[2] != "/"
		return false if input[5] != "/"
		return false if input[0..1].to_i == 0
		return false if input[3..4].to_i == 0
		return false if input[6..9].to_i == 0
		true
	end	
end