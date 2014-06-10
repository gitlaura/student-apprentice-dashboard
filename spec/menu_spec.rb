require 'menu.rb'

describe "When a user select anything other than 5" do  
	it "an error message is shown" do  
		menu = Menu.new
		print menu.change_menu 3
		expect(menu.change_menu(3)).to be_a(String)
	end
end