Feature: Complete task
  Scenario: Mark task as completed
    Given I visit todo app
    When I add a new task "1st"
    Then I see 1 number of tasks
    And The last task name is "1st"
    When I mark "1st" task as completed
    Then I see "1st" task as completed
