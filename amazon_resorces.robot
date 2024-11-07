*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://www.amazon.com.br
${MENU_ELETRONICOS}    //a[@href='/Eletronicos-e-Tecnologia/b/?ie=UTF8&node=16209062011&ref_=nav_cs_electronics'][contains(.,'Eletrônicos')]     
${LOGO}    //a[contains(@class,'nav-logo-link nav-progressive-attribute')]
*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window

# Fechar o navegador
#     Close Browser

Acessar a home page do site Amazon.com.br
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${LOGO}

Entrar no menu "${MENU}"
    Click Element    locator=${MENU_ELETRONICOS}

Verificar se aparece a frase "${TITULO}"
    Wait Until Page Contains         text=${TITULO}
    Wait Until Element Is Visible    locator=//h1[contains(.,'${TITULO}')]

Verificar se o título da página fica "${TITULO}"
    Title Should Be    title=${TITULO}

Verificar se aparece a categoria "${NOME_CATEGORIA}"
    Element Should Be Visible    locator=//img[contains(@alt,'${NOME_CATEGORIA}')]

Digitar o nome de produto "${PRODUTO}" no campo de pesquisa
    Element Should Be Visible    locator=//input[contains(@type,'text')]
    Input Text    locator=//input[contains(@type,'text')]    text=${PRODUTO}


Clicar no botão de pesquisa
    Click Element    locator=//input[contains(@type,'submit')]

Verificar o resultado da pesquisa se está listando o produto "${PRODUTO}"
    Wait Until Element Is Visible    locator=//a[contains(.,'${PRODUTO}')]
    Element Should Be Visible    locator=//a[contains(.,'${PRODUTO}')]
    Element Text Should Be    locator=//a[contains(.,'${PRODUTO}')]    expected=${PRODUTO}