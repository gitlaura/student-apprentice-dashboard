require 'ui.rb'

describe "UI" do
 	before(:each) do
		@ui = UI.new
		
		@input = StringIO.new("test info\n")
		@output = StringIO.new

 		@input_received = @ui.receive(@input)
 		@ui.give("test message", @output)
 	end

 	it "should output a message for the user" do
 		@output.string.should =~ /test message/
 	end

 	it "should return the user's input" do
 		@input_received.should == "test info"
 	end

end