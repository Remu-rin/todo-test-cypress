import { Given, When, Then, And } from "@badeball/cypress-cucumber-preprocessor";

Given("I visit todo app", () => {
  cy.visit("https://todomvc.com/examples/angular2/");
});

When("I add a new task {string}", (name) => {
  cy.get('.new-todo').type(`${name}{enter}`);
});

Then("I see {int} number of tasks", (num) => {
  cy.get('.todo-list li')
    .should('have.length', num);
});

Then("The last task name is {string}", (name) => {
  cy.get('.todo-list li')
    .last()
    .should('have.text', name);
});

When("I mark {string} task as completed", (name) => {
  cy.get('.todo-list li').contains(name).siblings('.toggle').click();
});

Then("I see {string} task as completed", (name) => {
  cy.get('.todo-list li').contains(name).parents('li').should('have.class', 'completed');
});

When("I click Clear Completed button", () => {
  cy.get('.footer .clear-completed').click();
});

Then("I dont see {string} task", (name) => {
  cy.get('.todo-list li').contains(name).should('not.exist');
});

Then("I dont see Clear Completed button", (name) => {
  cy.get('.footer .clear-completed').should('not.exist');
});

When("I remove {string} task", (name) => {
  // cy.get('.todo-list li').contains(name).trigger('mouseover').siblings('.destroy').click();
  cy.get('.todo-list li').contains(name).siblings('.destroy').invoke('show').click();
});
