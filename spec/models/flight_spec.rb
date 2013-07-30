require 'spec_helper'

describe Flight do
  before do
    @flight = FactoryGirl.create(:flight)
  end

  it "has arrival airport" do
   expect(@flight.arrival_airport).to eq("SFO")
  end
end
