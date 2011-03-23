class Make < ActiveRecord::Base
  has_many :models
  has_many :vehicles, :through => :models
end
