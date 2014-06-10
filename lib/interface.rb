class Interface
	attr_accessor :output, :input

	def give(output_message)
		@output = output_message
		puts @output
	end

	def receive
		"3" #gets.chomp.to_s
	end
end