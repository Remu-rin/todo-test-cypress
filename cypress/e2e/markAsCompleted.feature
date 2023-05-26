Feature: Mark as completed
  Scenario: Mark task as completed
    Given I visit todo app
    When I add a new task "1st"
    When I add a new task "2nd"
    When I add a new task "3rd"
    Then I see 3 number of tasks
    When I mark "2nd" task as completed
    Then I see "2nd" task as completed
    And I see 3 number of tasks
    And I see 2 number of tasks left

  Scenario: Mark and unmark task as completed
    Given I visit todo app
    When I add a new task "1st"
    When I add a new task "2nd"
    When I add a new task "3rd"
    Then I see 3 number of tasks
    When I mark "2nd" task as completed
    Then I see "2nd" task as completed
    When I mark "2nd" task as completed
    Then I dont see "2nd" task as completed
    And I see 3 number of tasks
    And I see 3 number of tasks left
