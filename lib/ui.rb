class UI
	attr_accessor :stdin, :stdout

	def initialize
		@stdin = $stdin
		@stdout = $stdout
	end

	def give(output_message, output=@stdout)
		output.puts ""
		output.puts output_message
	end

	def receive(input=@stdin, output=@stdout)
		result = input.gets.chomp.to_s
	end
end