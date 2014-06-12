require 'interface.rb'

describe "UI" do
 	before(:each) do
		@ui = UI.new
		
		@input = StringIO.new("this message\n")
 		@output = $stdout.clone

 		@user_input = @ui.receive(@input)
 		@message_for_user = @ui.give("message for you", @output)
 	end

 	it "should output the message for the user" do
 		@message_for_user.should == "message for you"
 	end

 	it "should return the user's input" do
 		@user_input.should == "this message"
 	end

end