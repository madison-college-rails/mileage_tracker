require 'spec_helper'

describe Mileage do
  it { should belong_to :vehicle }

  it { should have_db_column(:filled_tank_on).of_type(:date) }
  it { should have_db_column(:miles).of_type(:decimal) }
  it { should have_db_column(:gallons).of_type(:decimal) }
end
