class Ticket < ActiveRecord::Base
  attr_accessible :flight_id, :passenger_id, :seat
  belongs_to :flight
  belongs_to :passenger
  def purchased?
  	passenger.present?
  end
end
