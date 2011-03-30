# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
[Make, Model, Vehicle].each(&:delete_all)

ford = Make.create! :name => 'Ford'
toyota = Make.create! :name => 'Toyota'

mustang = Model.create! :make => ford, :name => 'Mustang'
Model.create! :make => ford, :name => 'Focus'
Model.create! :make => toyota, :name => 'Prius'
camry = Model.create! :make => toyota, :name => 'Camry'

Vehicle.create! :model => mustang, :color => 'Black', :year => 1965,
  :license_plate_number => 'Z00M'

Vehicle.create! :model => camry, :color => 'Blue', :year => 2005,
  :license_plate_number => 'MATC1'