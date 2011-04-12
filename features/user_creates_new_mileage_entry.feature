@http://www.pivotaltracker.com/story/show/12183059
Feature: User creates new mileage entry
  In order to track the mileage of my vehicle
  As a user
  I want to create a mileage entry for my car

  Scenario: User creates new mileage entry
  Given vehicles:
  | make | model | license |
  | Toyota | Prius | SPRGRN |
  | Ford | Mustang | VROOM |
  And I am on the mileages page

  When I follow "New Mileage"
  And I select "Ford Mustang - VROOM" from "Vehicle"
  And I select "April" from "mileage_filled_tank_on_2i"
  And I select "12" from "mileage_filled_tank_on_3i"
  And I select "2011" from "mileage_filled_tank_on_1i"
  And I fill in "Miles" with "294.3"
  And I fill in "Gallons" with "18"
  And I press "Create Mileage"

  Then I should see "Mileage was successfully created"
  And I should be on the mileage show page for the mileage
  And I should see "2011-04-12"
  And I should see "Ford Mustang - VROOM"
  And I should see "294.3"
  And I should see "18"
