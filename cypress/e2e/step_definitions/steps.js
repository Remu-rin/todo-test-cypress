import { Given, When, Then, And } from "@badeball/cypress-cucumber-preprocessor";

Given("I visit todo app", () => {
  cy.visit("https://todomvc.com/examples/angular2/");
});

When("I add a new task {string}", (name) => {
  cy.get('.new-todo').type(`${name}{enter}`);
});

Then("I see {int} number of tasks and the last task name is {string}", (num, name) => {
  cy.get('.todo-list li')
    .should('have.length', num)
    .last()
    .should('have.text', name);
});
