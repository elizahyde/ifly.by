# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#seed admin
Passenger.create({ :email => 'admin@example.com', :password => 'password', :password_confirmation => 'password'})


#seed airports
airport_list = [
  ["LAX", "Los Angeles"],
  ["SFO", "San Francisco"],
  ["UTC", "Salt Lake City"],
  ["OAK", "Oakland"],
  ["JFK", "New York City"],
  ["SAC", "Sacramento"],
  ["AGN", "Angoon"],
  ["OMA", "Omaha"],
  ["PHX", "Phoenix"]
]

airport_list.each do |airport_code, city|
  Airport.create(airport_code: airport_code,
                 city: city)
end

#seed planes
plane_list = [
  ["B747", 10, 12],
  ["AB69", 5, 7],
  ["TTYL", 10, 20],
  ["BBQ", 3, 8],
  ["37XY", 6, 10],
  ["STR4", 3, 9],
]

plane_list.each do |plane_name, row, column|
  Plane.create(
    plane_name: plane_name,
    row: row,
    column: column
    )
end

#seed flights
flight_list = [
[1, 2,  "2013-07-30 17:30:00", "2013-07-30 20:30:00", "VA069X", 1 ],
[2, 3,  "2013-07-30 21:30:00", "2013-07-31 00:30:00", "VA070X", 2 ],
[3, 4,  "2013-07-30 17:30:00", "2013-07-30 20:30:00", "VA069X", 3 ],
[4, 5,  "2013-07-30 21:30:00", "2013-07-31 00:30:00", "VA070X", 4 ],
[5, 6,  "2013-07-30 17:30:00", "2013-07-30 20:30:00", "VA069X", 5 ],
[7, 8,  "2013-07-30 21:30:00", "2013-07-31 00:30:00", "VA070X", 6 ],
[9, 1,  "2013-07-30 17:30:00", "2013-07-30 20:30:00", "VA069X", 1 ],
[1, 2,  "2013-07-30 21:30:00", "2013-07-31 00:30:00", "VA070X", 2 ],
[2, 3,  "2013-07-30 17:30:00", "2013-07-30 20:30:00", "VA069X", 3 ],
[4, 5,  "2013-08-01 21:30:00", "2013-08-02 00:30:00", "VA070X", 4 ],
[6, 7,  "2013-07-30 17:30:00", "2013-07-30 20:30:00", "VA069X", 5 ],
[7, 8,  "2013-08-02 21:30:00", "2013-08-03 00:30:00", "VA070X", 6 ],

]

flight_list.each do |arrival_airport_id, departure_airport_id, departure_datetime, arrival_datetime, flight_code, plane_id|
  Flight.create( arrival_airport_id: arrival_airport_id,
    departure_airport_id: departure_airport_id,
    departure_datetime: departure_datetime,
    arrival_datetime: arrival_datetime,
    flight_code: flight_code,
    plane_id: plane_id
   )
end
#
#
# =begin
# def get_ids
#   flights = Flight.all
#   flight_ids = []
#   flights.each do |flight|
#   flight_ids << flight.id
#   end
#   return flight_ids
# end
# =end
#
# def seed_tickets
#   flights = Flight.all
#   flight_ids = []
#   flights.each do |flight|
#     flight_ids << flight.id
#   end
#   flight_ids.each do |flight_id|
#     seatcount = 0
#     50.times do |ticket|
#       Ticket.create(flight_id: flight_id, seat:(seatcount = seatcount + 1))
#     end
#   end
# end
#
# seed_tickets