class Flight < ActiveRecord::Base
  belongs_to :plane
  attr_accessible :arrival_airport, :arrival_datetime, :departure_datetime, :departure_airport, :flight_code


end
