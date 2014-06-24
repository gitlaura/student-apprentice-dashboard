require 'validity.rb'

class TestClass
end

describe "Validity" do
 	before(:each) do
 		@test_class = TestClass.new
 		@test_class.extend(Validity)
 		@options = [:optionone => "optionone", :optiontwo =>  "optiontwo",:optionthree => :invalid]
 	end

 	it "knows if a text input is valid" do 
 		expect(@test_class.valid_string?("laur5a")).to eq(false)
 		expect(@test_class.valid_string?("")).to eq(false)
 		expect(@test_class.valid_string?("Laura")).to eq(true)
 	end

 	it "knows if an integer is valid" do 
 		expect(@test_class.valid_integer?(0)).to eq(false)
 		expect(@test_class.valid_integer?(2)).to eq(true)
 	end

 	it "knows if a selection is valid" do 
 		expect(@test_class.valid_option?(5, @options)).to eq(false)
 		expect(@test_class.valid_option?(3, @options)).to eq(false)
 		expect(@test_class.valid_option?(1, @options)).to eq(true)
 	end
end 	