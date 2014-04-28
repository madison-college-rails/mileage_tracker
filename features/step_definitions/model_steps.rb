Given /^models:$/ do |kinds_of_cars|
  # table is a Cucumber::Ast::Table
  kinds_of_cars.hashes.each do |kind_of_car|
    make = Make.find_or_create_by(name: kind_of_car[:make])
    Model.find_or_create_by(make_id: make.id, name: kind_of_car[:model])
  end
end
