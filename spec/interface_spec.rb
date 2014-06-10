require 'interface.rb'

describe "Interface" do
	before(:each) do
		@interface = Interface.new
		
		@input = StringIO.new("this message\n")
		@output = $stdout.clone

		@interface.input = @input
		@interface.output = @output

		@user_input = @interface.receive
		@user_message = @interface.give("this message")
	end

	it "should output the user message" do
		@user_message.should == "this message"
	end

	it "should return the user's selection" do
		@user_input.should == "this message"
	end

end