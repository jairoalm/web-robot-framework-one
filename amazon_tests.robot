*** Settings ***
Documentation    Essa suíte testa o site da Amazon.com.br
Resource         amazon_resorces.robot
Test Setup       Abrir o navegador
# Test Teardown    Fechar o navegador


*** Test Cases ***
# Caso de Teste 01 - Acesso ao menu "Eletrônicos"
#     [Documentation]    Esse teste verifica o menu eletrônicos do site da Amazon.com.br
#     ...                e verifica a categoria Computadores e Informática
#     [Tags]             menus    categorias
#     Acessar a home page do site Amazon.com.br
#     Entrar no menu "Eletrônicos"
#     Verificar se aparece a frase "Até 25% off em Eletrônicos e TVs | Esquenta Black Friday"
#     Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"
#     Verificar se aparece a categoria "Computadores e Informática"

Caso de Teste 02 - Pesquisa de um Produto
    Acessar a home page do site Amazon.com.br
    Digitar o nome de produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa
    Verificar o resultado da pesquisa se está listando o produto "Console Xbox Series S"