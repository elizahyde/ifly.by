class Flight < ActiveRecord::Base
  belongs_to :plane
  belongs_to :arrival_airport, :class_name => "Airport"
  belongs_to :departure_airport, :class_name => "Airport"
  has_many :tickets
  attr_accessible :arrival_airport_id, :arrival_datetime, :departure_datetime, :departure_airport_id, :flight_code, :plane_id

  after_create :make_ticket
  def make_ticket
    #create tickets by row, seat & create same flight id
    rows = self.plane.row
    col = self.plane.column
    columns = ("A"..."Z").to_a[0..col]
    columns.each do |col|
      rows.times do |row|
        Ticket.create(seat:"#{col}#{row}", flight_id:self.id)
      end
    end
  end

end
