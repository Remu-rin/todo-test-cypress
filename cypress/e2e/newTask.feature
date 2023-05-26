Feature: New task
  Scenario: Adding first new task
    Given I visit todo app
    When I add a new task "1st"
    Then I see 1 number of tasks
    And The last task name is "1st"

  Scenario: Adding task with empty name is not possible
    Given I visit todo app
    When I add a new task "1st"
    Then I see 1 number of tasks
    When I add a new task ""
    Then I see 1 number of tasks

  Scenario: Adding task with quotes in name
    Given I visit todo app
    When I add a new task "1st"
    Then I see 1 number of tasks
    When I add a new task 'something "quote" something'
    Then I see 2 number of tasks
    And I see 'something "quote" something' task

  Scenario: Adding task with JS code in name
    Given I visit todo app
    When I add a new task "1st"
    Then I see 1 number of tasks
    When I add a new task "<script>alert('test')</script>"
    Then I see 2 number of tasks
    And I see "<script>alert('test')</script>" task

  Scenario: Adding task with a long name
    Given I visit todo app
    When I add a new task "1st"
    Then I see 1 number of tasks
    When I add a new task "<long name>"
    Then I see 2 number of tasks
    And I see "<long name>" task
    Examples:
    | long name |
    | Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. |