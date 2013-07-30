class AddAttributesToFlightModel < ActiveRecord::Migration
  def change
    add_column :flights, :arrival_airport, :string
    add_column :flights, :departure_airport, :string
    add_column :flights, :arrival_datetime, :datetime
    add_column :flights, :departure_datetime, :datetime
    add_column :flights, :flight_code, :string
    add_column :flights, :airline, :string
  end
end
