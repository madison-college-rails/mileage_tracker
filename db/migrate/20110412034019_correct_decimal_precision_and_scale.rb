class CorrectDecimalPrecisionAndScale < ActiveRecord::Migration
  def self.up
    change_column :mileages, :gallons, :decimal, :precision => 10, :scale => 2
    change_column :mileages, :miles, :decimal, :precision => 10, :scale => 2
  end

  def self.down
    change_column :mileages, :miles, :decimal
    change_column :mileages, :gallons, :decimal
  end
end