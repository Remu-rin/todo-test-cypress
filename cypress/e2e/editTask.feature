Feature: Edit task
  Scenario: Edit 1 task
    Given I visit todo app
    When I add a new task "1st"
    When I add a new task "2nd"
    When I add a new task "3rd"
    Then I see 3 number of tasks
    And The last task name is "3rd"
    When I double-click "2nd" task to edit
    Then I see "2nd" task in edit mode
    When I type "edited" in "2nd" task edit mode and press "Enter"
    Then I see "edited" task
    And I dont see "2nd" task
    And I see 3 number of tasks

  Scenario: Cancel edit with Esc
    Given I visit todo app
    When I add a new task "1st"
    When I add a new task "2nd"
    When I add a new task "3rd"
    Then I see 3 number of tasks
    And The last task name is "3rd"
    When I double-click "2nd" task to edit
    Then I see "2nd" task in edit mode
    When I type " " in "2nd" task edit mode and press "Escape"
    Then I see "2nd" task
    And I see 3 number of tasks

  Scenario: Cancel edit with Tab
    Given I visit todo app
    When I add a new task "1st"
    When I add a new task "2nd"
    When I add a new task "3rd"
    Then I see 3 number of tasks
    And The last task name is "3rd"
    When I double-click "2nd" task to edit
    Then I see "2nd" task in edit mode
    When I type " " in "2nd" task edit mode and press "Tab"
    Then I see "2nd" task
    And I see 3 number of tasks

  Scenario: Cancel edit with click on body
    Given I visit todo app
    When I add a new task "1st"
    When I add a new task "2nd"
    When I add a new task "3rd"
    Then I see 3 number of tasks
    And The last task name is "3rd"
    When I double-click "2nd" task to edit
    Then I see "2nd" task in edit mode
    When I type " " in "2nd" task edit mode and click on "body"
    Then I see "2nd" task
    And I see 3 number of tasks
