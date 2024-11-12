*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary

*** Variables ***
${first_name}=        jose_andrade
&{EMAIL_ALEATORIO}    nome=${first_name}    email=@testerobot.com

*** Keywords *** 
Imprimir email EMAIL_ALEATORIO    
    Uma subkeyword com argumentos    ${EMAIL_ALEATORIO.nome}    ${EMAIL_ALEATORIO.email}  
    ${MENSAGEM_ALERTA}  Uma subkeyword com retorno      ${EMAIL_ALEATORIO.nome}    ${EMAIL_ALEATORIO.email}
    Log     ${MENSAGEM_ALERTA}  

Uma subkeyword com argumentos
    [Arguments]    ${NOME_USUARIO}    ${EMAIL_USUARIO}
    Log    ${NOME_USUARIO}
    Log    ${EMAIL_USUARIO}

Uma subkeyword com retorno
    [Arguments]       ${NOME_USUARIO}    ${EMAIL_USUARIO}
    ${MESSAGE}    Set Variable    ${NOME_USUARIO}${EMAIL_USUARIO}
    [Return]          ${MESSAGE}
    
*** Test Cases ***
Cenario 001: Validar EMAIL_ALEATORIO
    Imprimir email EMAIL_ALEATORIO    