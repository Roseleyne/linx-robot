*** Settings ***

Library    SeleniumLibrary

*** Keywords ***

Conferir o filtro segmento selecionado

    Open Browser          url=https://www.linx.com.br/farmacia/    browser=chrome
    Maximize Browser Window
    Page Should Contain Element    //h1[contains(.,'farmácias e drogarias')]


*** Test Cases ***

Cenario 8: Deve conferir se filtrou o segmento selecionado

    Conferir o filtro segmento selecionado

# verifique se filtrou o segmento selecionado    
# robot -d ./logs categoria.robot  