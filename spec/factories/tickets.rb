# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :ticket do
    seat "7C"
    flight_id 1
    passenger_id 1
  end
end
