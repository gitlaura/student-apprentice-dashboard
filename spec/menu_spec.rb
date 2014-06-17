require 'menu.rb'

describe "Menu" do 
	before (:each) do
		@menu = Menu.new
	end

	it "responds to make_move" do
		expect(@menu).to respond_to(:make_move)
	end

	it "responds to invalid?" do
		expect(@menu).to respond_to(:invalid_selection?)
	end
end

describe "When Main Menu wants to make move" do
	before(:each) do
		@menu = Menu.new
	end	
end

describe "Menu" do  
	before (:each) do
		@menu = Menu.new
		@menu_number = 1
	end

	context "when the current menu equals Main Menu" do 
		it "it returns invalid for a selection of 6" do 
			expect(@menu.make_move(@menu_number,6)).to eq(:invalid)
		end

		it "it returns invalid for a selection of 3" do 
			expect(@menu.make_move(@menu_number,3)).to eq(:invalid)
		end

		it "returns Exit if exit is true" do
			expect(@menu.make_move(@menu_number,5)).to eq(:exit)
		end

	end	
end
