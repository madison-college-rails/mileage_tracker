class CreateVehicles < ActiveRecord::Migration
  def self.up
    create_table :vehicles do |t|
      t.string :color
      t.integer :year
      t.string :license_plate_number

      t.timestamps
    end
  end

  def self.down
    drop_table :vehicles
  end
end
