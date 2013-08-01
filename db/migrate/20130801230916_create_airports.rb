class CreateAirports < ActiveRecord::Migration
  def change
    create_table :airports do |t|
      t.string :airport_code
      t.float :latitude
      t.float :longitude
      t.string :city

      t.timestamps
    end
  end
end
