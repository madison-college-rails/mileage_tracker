require 'spec_helper'

describe Vehicle do
  it { should belong_to :model }
  it { should have_many :mileages }

  it { should have_db_column(:color).of_type(:string) }
  it { should have_db_column(:year).of_type(:integer) }
  it { should have_db_column(:license_plate_number).of_type(:string) }

  describe 'make method' do
    let(:model) { Model.create! }
    let(:vehicle) { Vehicle.create! :model => model }

    it 'should delegate to the associated model' do
      model.should_receive(:make).and_return('Ford')
      vehicle.make.should == 'Ford'
    end
  end

  describe 'make_and_model method' do
    let(:toyota) { Make.create! :name => 'Toyota' }
    let(:prius) { Model.create! :make => toyota, :name => 'Prius' }
    let(:vehicle) { Vehicle.create! :model => prius }

    it 'should return the make and model string' do
      vehicle.make_and_model.should == 'Toyota Prius'
    end
  end

  describe 'display_name method' do
    let(:toyota) { Make.create! :name => 'Toyota' }
    let(:prius) { Model.create! :make => toyota, :name => 'Prius' }
    let(:vehicle) { Vehicle.create! :model => prius, :license_plate_number => 'VROOM' }

    it 'should return the formatted make, model and license' do
      vehicle.display_name.should == 'Toyota Prius - VROOM'
    end
  end

end
