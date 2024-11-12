*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary

*** Variables ***
@{LISTA_NUMEROS}=       0    3    5    7    9    10    12

*** Keywords *** 
Imprimir email números
    Log TO Console  ${\n}
    FOR     ${NUMERO}     IN      @{LISTA_NUMEROS}
        IF    ${NUMERO} == 5
            Log To Console      Eu sou o número 5!
        ELSE IF    ${NUMERO} == 10
            Log To Console      Eu sou o número 10!
        ELSE
            Log To Console    Eu não sou o número 5 e nem o 10!            
        END
    END    

*** Test Cases ***
Cenario 001: Validar Números
    Imprimir email números    