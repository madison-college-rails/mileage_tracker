Given /^vehicles:$/ do |vehicles|
  vehicles.hashes.each do |vehicle|
    make = Make.find_or_create_by(name: vehicle[:make])
    model = Model.find_or_create_by(make_id: make.id, name: vehicle[:model])
    Vehicle.find_or_create_by(model_id: model.id, license_plate_number: vehicle[:license])
  end
end
