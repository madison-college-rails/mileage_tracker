class Make < ActiveRecord::Base
  has_many :models
  has_many :vehicles, :through => :models
end

# == Schema Information
# Schema version: 20110323015520
#
# Table name: makes
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

