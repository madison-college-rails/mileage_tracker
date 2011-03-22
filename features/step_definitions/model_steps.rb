Given /^models:$/ do |kinds_of_cars|
  # table is a Cucumber::Ast::Table
  kinds_of_cars.hashes.each do |kind_of_car|
    make = Make.find_or_create_by_name kind_of_car[:make]
    Model.find_or_create_by_make_id_and_name make.id, kind_of_car[:model]
  end
end
