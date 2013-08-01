class Airport < ActiveRecord::Base
  attr_accessible :airport_code, :city, :latitude, :longitude
  has_many :flights
  geocoded_by :city
  after_validation :geocode
end
