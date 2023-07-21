Cypress.Commands.add('custom_command_example', (user, password) => {
    cy.get('#user').type(user)
    cy.get('#password').type(password)
    cy.get('#login').click()
    // example
})
