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
end