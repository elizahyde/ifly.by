class CreatePlanes < ActiveRecord::Migration
  def change
    create_table :planes do |t|
      t.string :plane_name
      t.integer :flight_id
      t.integer :row
      t.integer :column

      t.timestamps
    end
  end
end
