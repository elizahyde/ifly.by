# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :airport do
    airport_code "MyString"
    latitude 1.5
    longitude 1.5
    city "MyString"
  end
end
