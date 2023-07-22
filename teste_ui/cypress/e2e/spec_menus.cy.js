describe('Validar menus do site VR', () => {

  beforeEach(() => {
    cy.visit('/');
  })

  it('Validar mapa de estabelecimentos para usar cartão VR', () => {
    cy.contains('a', 'Pra Você').click();
    cy.contains('a', 'Onde usar o meu cartão').click();
    cy.intercept('GET', '/maps/api/mapsjs/gen_204?csp_test=true').as('getMaps')
    cy.get('#map').should('be.visible');

    cy.wait('@getMaps').its('response.statusCode').should('eq', 200)
  })

})