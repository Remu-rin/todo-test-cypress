Feature: New task
  Scenario: Adding first new task
    Given I visit todo app
    When I add a new task "1st"
    Then I see 1 number of tasks and the last task name is "1st"
