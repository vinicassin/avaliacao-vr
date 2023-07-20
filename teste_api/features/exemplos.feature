#language: pt

Funcionalidade: Desejo realizar a pesquisa sobre nossos produtos e estabelecimentos

Cenario: Realizar a pesquisa dos produtos e estabelecimentos com sucesso
  Dado que realizo a pesquisa por estabelecimentos
  Quando valido o status code '200'
  Entao visualizo aleatoriamente um tipo de estabelecimento
