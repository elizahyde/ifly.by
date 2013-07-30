require 'spec_helper'

describe Flight do
  before do
    @flight = FactoryGirl.create(:flight)
  end

  it "has arrival airport" do
   expect(@flight.arrival_airport).to eq("SFO")
  end

  it "has departure airport" do
   expect(@flight.departure_airport).to eq("LAX")
  end

  it "has a departure time" do
   expect(@flight.departure_datetime).to eq("Tue, 30 Jul 2013 20:30:00 UTC +00:00")
  end

  it "has an arrival time" do
   expect(@flight.arrival_datetime).to eq("Tue, 30 Jul 2013 17:30:00 UTC +00:00")
  end

  it "has a flight code" do
   expect(@flight.flight_code).to eq("VA069x")
  end

  it "has an airline name" do
   expect(@flight.airline).to eq("Virgin America")
  end
end
