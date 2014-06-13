require 'interface.rb'

describe "UI" do
 	before(:each) do
		@ui = UI.new
		
		@input = StringIO.new("this message\n")

 		@user_input = @ui.receive(@input)

 		@ui.stub(:give).and_return(@user_input)
 		@message_for_user = @ui.give(@user_input)
 	end

 	it "should output the message for the user" do
 		@message_for_user.should == "this message"
 	end

 	it "should return the user's input" do
 		@user_input.should == "this message"
 	end

end