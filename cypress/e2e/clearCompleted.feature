Feature: Clear completed tasks
  Scenario: Clear 1 completed task
    Given I visit todo app
    When I add a new task "1st"
    And I add a new task "2nd"
    And I add a new task "3rd"
    Then I see 3 number of tasks
    And The last task name is "3rd"
    When I mark "1st" task as completed
    And I click Clear Completed button
    Then I see 2 number of tasks
    And I dont see "1st" task
    And I dont see Clear Completed button

  Scenario: Clear 3 completed task
    Given I visit todo app
    When I add a new task "1st"
    And I add a new task "2nd"
    And I add a new task "3rd"
    And I add a new task "4th"
    And I add a new task "5th"
    Then I see 5 number of tasks
    And The last task name is "5th"
    When I mark "1st" task as completed
    And I mark "3rd" task as completed
    And I mark "5th" task as completed
    And I click Clear Completed button
    Then I see 2 number of tasks
    And I dont see "1st" task
    And I dont see "3rd" task
    And I dont see "5th" task
    And I dont see Clear Completed button
