class Ticket < ActiveRecord::Base
  attr_accessible :flight_id, :passenger_id, :seat
end
