import { Given, When, Then, And } from "@badeball/cypress-cucumber-preprocessor";

Given("I visit todo app", () => {
  cy.visit("https://todomvc.com/examples/angular2/");
});

When("I add a new task {string}", (name) => {
  cy.get('.new-todo').type(`${name}{enter}`);
});

Then("I see {int} number of tasks", (num) => {
  cy.get('.todo-list li').should('have.length', num);
});

Then("The last task name is {string}", (name) => {
  cy.get('.todo-list li').last().should('have.text', name);
});

When("I mark {string} task as completed", (name) => {
  cy.get('.todo-list li').contains(name).siblings('.toggle').click();
});

Then("I see {string} task as completed", (name) => {
  cy.get('.todo-list li').contains(name).parents('li').should('have.class', 'completed');
});

Then("I dont see {string} task as completed", (name) => {
  cy.get('.todo-list li').contains(name).parents('li').should('not.have.class', 'completed');
});

Then("I see {int} number of tasks left", (num) => {
  cy.get('.todo-count').contains(num);
});

When("I click Clear Completed button", () => {
  cy.get('.footer .clear-completed').click();
});

Then("I see {string} task", (name) => {
  cy.get('.todo-list li').contains(name).should('exist');
});

Then("I dont see {string} task", (name) => {
  cy.get('.todo-list li').contains(name).should('not.exist');
});

Then("I dont see Clear Completed button", () => {
  cy.get('.footer .clear-completed').should('not.exist');
});

When("I remove {string} task", (name) => {
  cy.get('.todo-list li').contains(name).realHover().siblings('.destroy').click();
});

When("I double-click {string} task to edit", (name) => {
  cy.get('.todo-list li').contains(name).dblclick();
});

When("I see {string} task in edit mode", (name) => {
  cy.get('.todo-list li').contains(name).parents('li').should('have.class', 'editing');
  cy.get('.todo-list li').contains(name).parent().siblings('input.edit').should('exist');
});

When("I type {string} in {string} task edit mode and press {string}", (text, name, key) => {
  cy.get('.todo-list li').contains(name).parent().siblings('input.edit').clear().type(text).realPress(key);
});

When("I type {string} in {string} task edit mode and click on {string}", (text, name, elem) => {
  cy.get('.todo-list li').contains(name).parent().siblings('input.edit').clear().type(text);
  cy.get(elem).click()
});
