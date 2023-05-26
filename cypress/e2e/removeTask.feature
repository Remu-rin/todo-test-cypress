Feature: Remove task
  Scenario: Remove 1 task
    Given I visit todo app
    When I add a new task "1st"
    And I add a new task "2nd"
    And I add a new task "3rd"
    Then I see 3 number of tasks
    And The last task name is "3rd"
    When I remove "1st" task
    Then I dont see "1st" task
    And I see 2 number of tasks
