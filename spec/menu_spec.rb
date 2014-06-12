require 'menu.rb'

describe "Menu" do 
	before (:each) do
		@menu = Menu.new
	end

	it "saves the invalid options" do
		expect(@menu.invalid_options).not_to be(nil)
	end

	it "saves the exit option" do
		expect(@menu.exit_option).not_to be(nil)
	end

	it "responds to make_move" do
		expect(@menu).to respond_to(:make_move)
	end

	it "responds to invalid?" do
		expect(@menu).to respond_to(:invalid?)
	end

	it "responds to exit?" do
		expect(@menu).to respond_to(:exit?)
	end
end

describe "When Main Menu wants to make move" do
	before(:each) do
		@menu = Menu.new
	end

	it "saves the selection" do
		@menu.make_move(5)
		expect(@menu.selection).to eq(5)
	end

	it "returns true for invalid options" do
		result = @menu.invalid?(3)
		expect(result).to eq(true)
	end

	it "does not return invalid for a valid option" do
		result = @menu.invalid?(5)
		expect(result).not_to eq(true)
	end

	it "returns true for exit options" do
		result = @menu.exit?(5)
		expect(result).to eq(true)
	end

	it "returns Exit if exit is true" do
		result = @menu.make_move(5)
		expect(result).to eq("Exit")
	end
end
