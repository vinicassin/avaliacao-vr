# Definimos como padrões para esse projeto:

## Linguagem de programação e node: 
 - JavaScript
 - Node 20.3.1


## Configuração:

- Passos para instalar o node no windows/mac: https://nodejs.org/en/download/current/

ou via linha de comando no mac, tutorial abaixo:
https://www.dyclassroom.com/howto-mac/how-to-install-nodejs-and-npm-on-mac-using-homebrew

- Após acessar a pasta do projeto digitar npm install para instalar as dependências que estão no arquivo package.json.

## Como rodar os testes? Utilizar comandos abaixo:

npx cypress open                           // ira se abrir a interface gráfica

npx cypress run                            // ira rodar os testes via terminal

npx cypress run --reporter mochawesome     // ira utilizar o report do mochawesome
