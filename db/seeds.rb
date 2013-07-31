# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

arrival_airport

flight_list = [
["LAX", "SFO", "2013-07-30 17:30:00", "2013-07-30 20:30:00", "VA069X", "Virgin Airlines" ],
["SFO", "LAX", "2013-07-30 21:30:00", "2013-07-31 00:30:00", "VA070X", "Virgin Airlines" ],
["LAX", "SFO", "2013-08-01 17:30:00", "2013-08-01 20:30:00", "VA069X", "Virgin Airlines" ],
["SFO", "LAX", "2013-08-01 21:30:00", "2013-08-02 00:30:00", "VA070X", "Virgin Airlines" ],
["LAX", "SFO", "2013-08-01 17:30:00", "2013-08-01 20:30:00", "AA001X", "American Airlines" ],
["SFO", "LAX", "2013-08-01 21:30:00", "2013-08-02 00:30:00", "AA002x", "American Airlines" ],
["OAK", "SAC", "2013-08-02 07:00:00", "2013-08-02 08:00:00", "SW023y", "Southwest Airlines" ],
["OAK", "SAC", "2013-08-02 08:00:00", "2013-08-02 09:00:00", "SW024y", "Southwest Airlines" ],
["OAK", "SAC", "2013-09-02 07:00:00", "2013-09-02 08:00:00", "SW025y", "Southwest Airlines" ],
["OAK", "SAC", "2013-09-02 07:00:00", "2013-09-02 08:00:00", "SW025y", "Southwest Airlines" ],

["LAX", "SFO", "2013-09-30 17:30:00", "2013-09-30 20:30:00", "VA069X", "Virgin Airlines" ],
["SFO", "LAX", "2013-09-30 21:30:00", "2013-09-31 00:30:00", "VA070X", "Virgin Airlines" ],
["LAX", "SFO", "2013-10-01 17:30:00", "2013-10-01 20:30:00", "VA069X", "Virgin Airlines" ],
["SFO", "LAX", "2013-10-01 21:30:00", "2013-10-02 00:30:00", "VA070X", "Virgin Airlines" ],
["LAX", "SFO", "2013-11-01 17:30:00", "2013-11-01 20:30:00", "AA001X", "American Airlines" ],
["SFO", "LAX", "2013-11-01 21:30:00", "2013-11-02 00:30:00", "AA002x", "American Airlines" ],
["OAK", "SAC", "2013-11-02 07:00:00", "2013-11-02 08:00:00", "SW023y", "Southwest Airlines" ],
["OAK", "SAC", "2013-12-02 08:00:00", "2013-12-02 09:00:00", "SW024y", "Southwest Airlines" ],
["OAK", "SAC", "2013-12-02 07:00:00", "2013-12-02 08:00:00", "SW025y", "Southwest Airlines" ],
["OAK", "SAC", "2013-12-02 07:00:00", "2013-12-02 08:00:00", "SW025y", "Southwest Airlines" ]

]

flight_list.each do |arrival_airport, departure_airport, departure_datetime, arrival_datetime, flight_code, airline|
Flight.create(
  arrival_airport: arrival_airport,
  departure_airport: departure_airport,
  departure_datetime: departure_datetime,
  arrival_datetime: arrival_datetime,
  flight_code: flight_code,
  airline: airline

 )

end