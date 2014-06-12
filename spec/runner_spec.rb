require 'runner'

describe "Runner" do
	it "displays user name" do
		expect(Runner).to respond_to(:display_welcome_message)
	end
end