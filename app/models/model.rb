class Model < ActiveRecord::Base
  belongs_to :make
  has_many :vehicles
  has_many :mileages, :through => :vehicles
end
