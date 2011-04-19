class Vehicle < ActiveRecord::Base
  belongs_to :model
  has_many :mileages
  delegate :make, :to => :model

  def make_and_model
    "#{make.name} #{model.name}"
  end

  def display_name
    "#{make_and_model} - #{license_plate_number}"
  end
end

# == Schema Information
# Schema version: 20110323015520
#
# Table name: vehicles
#
#  id                   :integer         not null, primary key
#  color                :string(255)
#  year                 :integer
#  license_plate_number :string(255)
#  created_at           :datetime
#  updated_at           :datetime
#  model_id             :integer
#

