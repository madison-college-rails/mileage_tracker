class Vehicle < ActiveRecord::Base
  belongs_to :model
  has_many :mileages
  delegate :make, :to => :model
  
  def make_and_model
    "#{make.name} #{model.name}"
  end
end
