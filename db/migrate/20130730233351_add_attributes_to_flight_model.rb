class AddAttributesToFlightModel < ActiveRecord::Migration
  def change
    add_column :flights, :arrival_airport_id, :integer
    add_column :flights, :departure_airport_id, :integer
    add_column :flights, :arrival_datetime, :datetime
    add_column :flights, :departure_datetime, :datetime
    add_column :flights, :flight_code, :string

  end
end
