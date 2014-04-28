Given /^a (\d+) (\w+) (\w+) (\w+) exists with license "([^"]*)"$/ do |year, color, make_name, model_name, license_plate_number|
  make = Make.find_or_create_by(name: make_name)
  model = Model.find_or_create_by(make_id: make.id, name: model_name)
  Vehicle.create!(model: model, color: color, year: year, license_plate_number: license_plate_number)
end
