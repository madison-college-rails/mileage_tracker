class Mileage < ActiveRecord::Base
  belongs_to :vehicle

  validates_presence_of :vehicle_id
  validates_presence_of :filled_tank_on
  validates_presence_of :miles
  validates_presence_of :gallons
end


# == Schema Information
# Schema version: 20110412020835
#
# Table name: mileages
#
#  id             :integer         not null, primary key
#  vehicle_id     :integer
#  miles          :decimal(, )
#  gallons        :decimal(, )
#  created_at     :datetime
#  updated_at     :datetime
#  filled_tank_on :date
#

