@http://www.pivotaltracker.com/story/show/11414497
Feature: User creates new vehicle
  In order to track the mileage of my vehicle
  As a user
  I want to create a vehicle record for my car

  Scenario: User creates new vehicle using Make and Model drop downs
    Given models:
      | make   | model   |
      | Toyota | Prius   |
      | Toyota | Camry   |
      | Ford   | Focus   |
      | Ford   | Mustang |
    And I am on the vehicles page

    When I follow "New Vehicle"
      And I select "Prius" from "Model"
      And I fill in "Color" with "Blue"
      And I fill in "Year" with "2002"
      And I fill in "License plate number" with "ABC123"
      And I press "Create Vehicle"

    Then I should see "Vehicle was successfully created"
      And I should be on the vehicle show page for the vehicle
      And I should see "2002"
      And I should see "Blue"
      And I should see "Toyota Prius"
      And I should see "ABC123"
