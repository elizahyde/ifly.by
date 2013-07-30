class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|

      t.timestamps
    end
  end
end
