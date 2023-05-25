Feature: New task
  Scenario: Adding first new task
    Given I visit todo app
    When I add a new task "1st"
    Then I see 1 number of tasks
    And The last task name is "1st"
