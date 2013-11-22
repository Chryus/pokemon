# tests for student class, you can instantiate a student and it will have a 
# name, twitter handle, blog

require '../lib/pokemon.rb'
weedle = Pokemon.new("Puelele")

describe "Pokemon, #initialize" do
	  
	  it "take an instance of the class Pokemon and returns a name" do
	  	expect(weedle.name).to eq("Puelele")
	  end
	end


describe "Pokemon, #say_name" do
	  it "returns a string with that has the name of the class object" do
	   	expect(weedle.say_name).to eq("My name is Puelele!")
	  end
	end