class AddAttributesToFlightModel < ActiveRecord::Migration
  def change
    add_column :flights, :arrival_airport, :string
    add_column :flights, :departure_airport, :string
    add_column :flights, :arrival_datetime, :datetime
    add_column :flights, :departure_datetime, :datetime
    add_column :flights, :flight_code, :string
    add_column :flights, :airline, :string
    add_column :flights, :arrival_latitude, :float
    add_column :flights, :arrival_longitude, :float
    add_column :flights, :departure_latitude, :float
    add_column :flights, :departure_longitude, :float

  end
end
