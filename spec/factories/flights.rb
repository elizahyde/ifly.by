FactoryGirl.define do
  factory :flight do
    arrival_airport "SFO"
    departure_airport "LAX"
    arrival_datetime Time.now
    departure_datetime 3.hours.from_now
    flight_code "069x"
    airline "Virgin America"
  end
end
