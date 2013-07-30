FactoryGirl.define do
  factory :flight do
    arrival_airport "SFO"
    departure_airport "LAX"
    arrival_datetime "2013-07-30 17:30:00"
    departure_datetime "2013-07-30 20:30:00"
    flight_code "VA069x"
    airline "Virgin America"
  end
end
