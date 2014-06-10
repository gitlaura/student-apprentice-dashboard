class Interface
	attr_accessor :input, :output

	def initialize
		self.input = $stdin
		self.output = $stdout
	end

	def give(output_message)
		output.puts output_message
		return output_message
	end

	def receive
		result = input.gets.chomp.to_s
	end
end