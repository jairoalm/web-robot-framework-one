*** Settings ***
Library    SeleniumLibrary

*** Variables ***
@{MESES_DO_ANO}    Janeiro    
...                Fevereiro        
...                Março    
...                Abril        
...                Maio    
...                Junho    
...                Julho    
...                Agosto    
...                Setembro
...                Outubro    
...                Novembro     
...                Dezembro

&{DIAS_DO_MES}     Janeiro=31    
...                Fevereiro=28    
...                Março=31    
...                Abril=30    
...                Maio=31    
...                Junho=30    
...                Julho=31    
...                Agosto=31    
...                Setembro=30   
...                Outubro=31    
...                Novembro=30     
...                Dezembro=31

*** Keywords ***
Imprimir meses do ano
    Log To Console    ${MESES_DO_ANO[0]}
    Log To Console    ${MESES_DO_ANO[1]}
    Log To Console    ${MESES_DO_ANO[2]}
    Log To Console    ${MESES_DO_ANO[3]}
    Log To Console    ${MESES_DO_ANO[4]}
    Log To Console    ${MESES_DO_ANO[5]}
    Log To Console    ${MESES_DO_ANO[6]}
    Log To Console    ${MESES_DO_ANO[7]}
    Log To Console    ${MESES_DO_ANO[8]}
    Log To Console    ${MESES_DO_ANO[9]}
    Log To Console    ${MESES_DO_ANO[10]}
    Log To Console    ${MESES_DO_ANO[11]}
    Log To Console    ${MESES_DO_ANO}

Imprimir mes e quantidade de dias
    Log To Console    O me de ${MESES_DO_ANO[0]} tem ${DIAS_DO_MES.Janeiro} dias
    Log To Console    O me de ${MESES_DO_ANO[1]} tem ${DIAS_DO_MES.Fevereiro} dias
    Log To Console    O me de ${MESES_DO_ANO[2]} tem ${DIAS_DO_MES.Março} dias
    Log To Console    O me de ${MESES_DO_ANO[3]} tem ${DIAS_DO_MES.Abril} dias
    Log To Console    O me de ${MESES_DO_ANO[4]} tem ${DIAS_DO_MES.Maio} dias
    Log To Console    O me de ${MESES_DO_ANO[5]} tem ${DIAS_DO_MES.Junho} dias
    Log To Console    O me de ${MESES_DO_ANO[6]} tem ${DIAS_DO_MES.Julho} dias
    Log To Console    O me de ${MESES_DO_ANO[7]} tem ${DIAS_DO_MES.Agosto} dias
    Log To Console    O me de ${MESES_DO_ANO[8]} tem ${DIAS_DO_MES.Setembro} dias
    Log To Console    O me de ${MESES_DO_ANO[9]} tem ${DIAS_DO_MES.Outubro} dias
    Log To Console    O me de ${MESES_DO_ANO[10]} tem ${DIAS_DO_MES.Novembro} dias
    Log To Console    O me de ${MESES_DO_ANO[11]} tem ${DIAS_DO_MES.Dezembro} dias

*** Test Cases ***
Cenario 001: Imprimir meses do ano 2024
    Imprimir meses do ano

Cenario 002: Imprimir meses e dias
    Imprimir mes e quantidade de dias