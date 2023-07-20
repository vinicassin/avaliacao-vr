Definimos como padrões para esse projeto:

Linguagem de programação: Ruby

Linguagem de escrita dos cenários de teste: Cucumber/Gherkin-pt

Pattern: PageObject - https://martinfowler.com/bliki/PageObject.html

Configuração:

Baixar a versão 3.2.2 do ruby.

Passos para instalar ruby no windows/mac:
https://www.ruby-lang.org/en/documentation/installation/


### Instalando o Bundler:
O bundler é nosso gerenciador de gemas (gem's) que são as dependências do projeto, ele utiliza como referência para o seu trabalho o arquivo Gemfile, que é onde você adiciona todas as dependências do seu projeto.

Pra você utiliza-lo é necessário instalar, executando o comando abaixo no terminal:

  - gem install bundler

O comando abaixo irá realizar o download e instalação de todas as gemas do arquivo GemFile.

  - bundle install

  Obs: Se estiver dando problema neste momento, executar o comando abaixo e depois o bundle install:

  - bundle update --bundler

### Executando testes
Para realizar execução dos testes é necessário realizar os comandos abaixo no terminal dentro da pasta do projeto.

Parametros:

cucumber: comando que inicia execução dos casos de teste.

Rodar por feature, passar o caminho, Ex:

features/feature_exemplo_vr.feature

Rodar utilizando as tags:

-t @tag_example

Rodar por ambiente, ambientes são configurados dentro do arquivo support/env e data/data.yml:
  dev=true
  prod=true
  integracao=true

## Roda apenas a feature especifica.
  cucumber features\arquivo.feature
## Roda todos os cenarios com a tag tag_example no ambiente de dev.
  cucumber dev=true -t @tag_example

## Roda todos os cenarios no ambiente dev
  cucumber dev=true

É gerado um relatorio que fica na pasta data/reports.

Gem que serve de auxilio na criação do projeto e Configuração:(Pretest)

gem install pretest
