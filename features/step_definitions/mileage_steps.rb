Given /^vehicles:$/ do |vehicles|
  vehicles.hashes.each do |vehicle|
    make = Make.find_or_create_by_name vehicle[:make]
    model = Model.find_or_create_by_make_id_and_name make.id, vehicle[:model]
    Vehicle.find_or_create_by_model_id_and_license_plate_number model.id, vehicle[:license]
  end
end
