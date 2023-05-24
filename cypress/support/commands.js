// ***********************************************
// This example commands.js shows you how to
// create various custom commands and overwrite
// existing commands.
//
// For more comprehensive examples of custom
// commands please read more here:
// https://on.cypress.io/custom-commands
// ***********************************************
//
//
// -- This is a parent command --
// Cypress.Commands.add('login', (email, password) => { ... })
//
//
// -- This is a child command --
// Cypress.Commands.add('drag', { prevSubject: 'element'}, (subject, options) => { ... })
//
//
// -- This is a dual command --
// Cypress.Commands.add('dismiss', { prevSubject: 'optional'}, (subject, options) => { ... })
//
//
// -- This will overwrite an existing command --
// Cypress.Commands.overwrite('visit', (originalFn, url, options) => { ... })

// https://github.com/cypress-io/cypress/issues/3887
// Workaround for leading and trailing whitespaces and newlines in angular2 version. This would make have.text trim them.
function overwriteShould(originalFn, subject, chainer, method, value) {
    if (chainer === 'have.text') {
      return originalFn(subject.prop('innerText').trim(), 'equal', method, value)
        .then(() => subject);
    }
    const args = Cypress._.reject(arguments, { name: 'originalFn' });
    return originalFn(...args);
  }

Cypress.Commands.overwrite('should', overwriteShould);

Cypress.Commands.overwrite('and', overwriteShould);
