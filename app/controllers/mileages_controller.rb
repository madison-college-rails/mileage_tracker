class MileagesController < ApplicationController
  def index
    @mileages = Mileage.all
  end

  def show
  end

  def create
    puts "passed params are: #{params}"
    filled_tank_on_year = params[:filled_tank_on_year]
    filled_tank_on_month = params[:filled_tank_on_month]
    filled_tank_on_day = params[:filled_tank_on_day]
    license_plate_number = params[:vehicle_id]

    mileage = Mileage.new
    # mileage.vehicle = Vehicle.find_by_license_plate_number(license_plate_number)
    mileage.vehicle = Vehicle.where(:license_plate_number => license_plate_number).first
    mileage.miles = params[:miles]
    mileage.gallons = params[:gallons]
    mileage.filled_tank_on = "#{filled_tank_on_year}-#{filled_tank_on_month}-#{filled_tank_on_day}" 

    if mileage.save
      flash[:notice] = 'Mileage entry was successfully created'
      redirect_to mileages_path
    else
      render :action => 'new'
    end
  end
end