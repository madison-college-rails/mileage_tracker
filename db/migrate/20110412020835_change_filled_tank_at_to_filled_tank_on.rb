class ChangeFilledTankAtToFilledTankOn < ActiveRecord::Migration
  def self.up
    add_column :mileages, :filled_tank_on, :date
    remove_column :mileages, :filled_tank_at
  end

  def self.down
    add_column :mileages, :filled_tank_at, :time
    remove_column :mileages, :filled_tank_on
  end
end
