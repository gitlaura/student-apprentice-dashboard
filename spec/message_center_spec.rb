require 'message_center'

describe "MessageCenter" do
	it "calls the main menu message" do
		expect(MessageCenter).to respond_to(:main_menu)
	end

	it "calls the invalid selection message" do
		expect(MessageCenter).to respond_to(:invalid_selection)
	end

	it "calls the welcome message" do
		expect(MessageCenter).to respond_to(:welcome_message)
	end
end