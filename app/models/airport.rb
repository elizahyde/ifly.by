class Airport < ActiveRecord::Base
  attr_accessible :airport_code, :city, :latitude, :longitude
  has_many :flights

end
