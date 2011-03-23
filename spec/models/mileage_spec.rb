require 'spec_helper'

describe Mileage do
  it { should belong_to :vehicle }

  it { should have_db_column(:filled_tank_at).of_type(:time) }
  it { should have_db_column(:miles).of_type(:decimal).with_options(:precision => 10, :scale => 2) }
  it { should have_db_column(:gallons).of_type(:decimal).with_options(:precision => 10, :scale => 2) }
end
