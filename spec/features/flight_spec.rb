require 'spec_helper'

describe "flight" do 
	it "show all airlines" do 
		visit root_path
		expect(page).to have_content("Airline")
	end
end