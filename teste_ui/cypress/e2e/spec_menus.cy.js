describe('Validar menus do site VR', () => {

  beforeEach(() => {
    cy.viewport(1920, 1080);
    cy.visit('https://vr.com.br');
  })

  it('Validar mapa de estabelecimentos para usar cartão VR', () => {
    // cy.visit('https://vr.com.br/onde-aceita.htm');

    cy.contains('a', 'Pra Você').click();
    cy.contains('a', 'Onde usar o meu cartão').click();
    cy.get('#map').should('be.visible');

    cy.request({
      method: 'GET',
      url: 'https://maps.googleapis.com/maps/api/mapsjs/gen_204?csp_test=true'
    }).then((res) => {
      expect(res.status).to.be.equal(200)
    })
  })

})