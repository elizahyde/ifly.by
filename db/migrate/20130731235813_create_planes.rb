class CreatePlanes < ActiveRecord::Migration
  def change
    create_table :planes do |t|
      t.integer :plane_model
      t.integer :flight_id

      t.timestamps
    end
  end
end
