class Mileage < ActiveRecord::Base
  belongs_to :vehicle
end

# == Schema Information
# Schema version: 20110323015520
#
# Table name: mileages
#
#  id             :integer         not null, primary key
#  vehicle_id     :integer
#  filled_tank_at :time
#  miles          :decimal(10, 2)
#  gallons        :decimal(10, 2)
#  created_at     :datetime
#  updated_at     :datetime
#

