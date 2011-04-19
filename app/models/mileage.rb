class Mileage < ActiveRecord::Base
  belongs_to :vehicle
  validates_presence_of :vehicle_id
  validates_presence_of :filled_tank_at
  validates_presence_of :miles
  validates_presence_of :gallons
end
