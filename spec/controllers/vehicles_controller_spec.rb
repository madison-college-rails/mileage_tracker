require 'spec_helper'

describe VehiclesController do
  describe 'GET new' do
    let!(:prius) { Model.create! :name => 'Prius' }
    let!(:mustang) { Model.create! :name => 'Mustang' }

    it 'should set @models' do
      Model.should_receive(:all).and_return([prius, mustang])
      get :new
      assigns[:models].should == [prius, mustang]
    end
  end
end
