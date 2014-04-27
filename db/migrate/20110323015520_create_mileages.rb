class CreateMileages < ActiveRecord::Migration
  def self.up
    create_table :mileages do |t|
      t.integer :vehicle_id
      t.time :filled_tank_at
      t.decimal :miles, :precision => 10, :scale => 2
      t.decimal :gallons, :precision => 10, :scale => 2

      t.timestamps
    end
  end

  def self.down
    drop_table :mileages
  end
end
