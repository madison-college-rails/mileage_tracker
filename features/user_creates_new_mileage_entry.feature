@http://www.pivotaltracker.com/story/show/12183059
Feature: User creates new mileage entry
  In order to track the mileage of my vehicle
  As a user
  I want to create a mileage entry for my car

  Scenario: User creates new mileage entry
  Given vehicles:
    | make | model | license |
    | Toyota | Prius | MATC1 |
    | Ford | Mustang | Z00M |
  And I am on the mileages page

  When I follow "New Mileage"
    And I select "Ford Mustang - Z00M" from "Vehicle"
    And I select "April" from "mileage_filled_tank_on_2i"
    And I select "12" from "mileage_filled_tank_on_3i"
    And I select "2011" from "mileage_filled_tank_on_1i"
    And I fill in "Miles" with "294.3"
    And I fill in "Gallons" with "18"
  And I press "Create Mileage"

  Then I should see "Mileage entry was successfully created"
    And I should be on the mileages page
    And I should see "2011-04-12"
    And I should see "Ford Mustang - Z00M"
    And I should see "294.3"
    And I should see "18"
