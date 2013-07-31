class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :seat
      t.integer :flight_id
      t.integer :passenger_id

      t.timestamps
    end
  end
end
