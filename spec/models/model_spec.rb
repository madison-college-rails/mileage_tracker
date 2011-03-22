require 'spec_helper'

describe Model do
  it { should belong_to :make }
  it { should have_many :vehicles }
  it { should have_many(:mileages).through(:vehicles) }

  it { should have_db_column(:name).of_type(:string) }
end
