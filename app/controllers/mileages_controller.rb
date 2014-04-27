class MileagesController < ApplicationController
  def index
    @mileages = Mileage.all
  end

  def show
  end

  def new
    @mileage = Mileage.new
    @vehicles = Vehicle.all
  end

  def create
    mileage = Mileage.new(params[:mileage])

    if mileage.save
      flash[:notice] = 'Mileage entry was successfully created'
      redirect_to mileages_path
    else
      @vehicles = Vehicle.all
      render :action => 'new'
    end
  end

end
