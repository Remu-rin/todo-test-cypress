# todo-test-cypress
This project is testing to-do list app at https://todomvc.com/examples/angular2/ for basic features:
- Adding tasks
- Editing tasks
- Removing tasks
- Marking/unmarking as completed
- Clear completed tasks

## Implementation:
This project was built using Cypress and Cucumber (BDD).

Behavior-driven development is used to organize scenarios and let non-tech people understand them.

Scenarios are located in `cypress/e2e/` as .feature files (Gherkin language).

Step definitions for them are located in `cypress/e2e/step_definitions/`

Allure is used for reporting.

## Pre-requisite

- [Allure](https://docs.qameta.io/allure/#_get_started)  
    It may be [classic solutions with java](https://github.com/allure-framework/allure2#download) or [allure-commandline npm package](https://www.npmjs.com/package/allure-commandline) running binary under the hood.

## How to run:
- clone this repo
- install dependencies: `npm install`
- clear previous allure output `npm run allure:clear`
- run tests: `npm run cy:run`
- generate allure report: `npm run allure:report`
- open report: `allure open`
