class AddAdminToPassengers < ActiveRecord::Migration
   def self.up
    add_column :passengers, :admin, :boolean, :default => false
  end
  def self.down
    remove_column :passengers, :admin
  end
end
