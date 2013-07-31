class Flight < ActiveRecord::Base
  attr_accessible :arrival_airport, :arrival_datetime, :departure_datetime, :departure_airport, :flight_code, :airline

  searchable do
  	text :arrival_airport, :arrival_datetime, :departure_datetime, :departure_airport
  end

end
