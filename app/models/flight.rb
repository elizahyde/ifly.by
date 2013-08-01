class Flight < ActiveRecord::Base
  belongs_to :plane
  attr_accessible :arrival_airport, :arrival_datetime, :departure_datetime, :departure_airport, :flight_code, :plane_id

  after_create :make_ticket
  def make_ticket
    #create tickets by row, seat & create same flight id
    rows = self.plane.row
    col = self.plane.column
    columns = ("A"..."Z").to_a[0...col]
    columns.each do |col|
      rows.times do |row|
        Ticket.create(seat:"#{col}#{row}", flight_id:self.id)
      end
    end
  end

end
