class Flight < ActiveRecord::Base
  belongs_to :plane
  attr_accessible :arrival_airport, :arrival_datetime, :departure_datetime, :departure_airport, :flight_code, :airline

before_create make_ticket
	def make_ticket
		#create tickets by row, seat & create same flight id      
    ('A'..'G').each do |current_row|
      (1..10).each do |current_column|
          self.id.each do |flight_id|
          Ticket.create({:row => current_row, :column => current_column, :flight_id => flight.id})
      end
    end

end
