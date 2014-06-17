class UI
	def give(output_message, output: $stdout)
		output.puts ""
		output.puts output_message
	end

	def receive(input: $stdin)
		input.gets.chomp.to_s
	end
end