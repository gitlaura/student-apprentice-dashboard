require 'menu_selector.rb'

describe "Menu Selector" do  
	before (:each) do
		@menu_selector = MenuSelector.new
		@menu_number = 1
	end

	it "selects 1 if the menu type is main menu" do  
		expect(@menu_selector.get_menu_number(:main_menu)).to eq(1)
	end

	it "selects 2 if the menu type is student account menu" do  
		expect(@menu_selector.get_menu_number(:student_account_menu)).to eq(2)
	end

	context "when current menu equals Main Menu" do 
		it "it returns invalid for a selection of 6" do 
			expect(@menu_selector.make_move(@menu_number,6)).to eq(:invalid)
		end

		it "it returns invalid for a selection of 3" do 
			expect(@menu_selector.make_move(@menu_number,3)).to eq(:invalid)
		end

		it "it returns exit for a selection of 5" do
			expect(@menu_selector.make_move(@menu_number,5)).to eq(:exit)
		end
	end	
end
