class MileagesController < ApplicationController
  def index
    @mileages = Mileage.all
  end

  def show
  end

  def create
    license_plate_number = params[:mileage][:vehicle_id]
    vehicle = Vehicle.find_by_license_plate_number(license_plate_number)
    params[:mileage][:vehicle_id] = vehicle.id
    params[:mileage][:filled_tank_on] = build_date(params[:mileage][:filled_tank_on])

    mileage = Mileage.new(params[:mileage])

    if mileage.save
      flash[:notice] = 'Mileage entry was successfully created'
      redirect_to mileages_path
    else
      render :action => 'new'
    end
  end

   
  private

  def build_date date_hash
    Date.new(date_hash[:year].to_i, date_hash[:month].to_i, date_hash[:day].to_i)
  end
  
end