@http://www.pivotaltracker.com/story/show/11691973
Feature: User deletes vehicle
  In order to stop tracking vehicles I no longer own
  as a user
  I want to delete a vehicle

  Scenario: User deletes vehicle
    Given models:
      | make   | model   |
      | Toyota | Prius   |

      And a 2002 Black Toyota Prius exists with license "ABC123"
      And I am on the vehicles page

    When I follow "Delete"

    Then I should be on the vehicles page
      And I should see "Vehicle successfully deleted"
      And I should not see "Toyota Prius"
      And I should not see "ABC123"
