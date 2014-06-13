require 'ui.rb'

describe "UI" do
 	before(:each) do
		@ui = UI.new
		
		@input = StringIO.new("this message\n")

 		@user_input = @ui.receive(@input)
 		@output_message = @user_input

 		@ui.stub(:give).and_return(@output_message)
 		@message_for_user = @ui.give(@user_input)
 	end

 	it "should output the message for the user" do
 		@message_for_user.should == "this message"
 	end

 	it "should return the user's input" do
 		@user_input.should == "this message"
 	end

end