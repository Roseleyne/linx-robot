*** Settings ***

Library    SeleniumLibrary

*** Keywords ***

Conferir se o link nao existe no site
    
    Open Browser       url=https://www.linx.com.br/    browser=chrome
    Element Should Not Be Visible    link=https://www.linx.com.br/area-do-cliente-e-suporte/
    Close Browser

*** Test Cases ***

Cenario 7: Deve conferir se nao existe o segmento Linx - Suporte
    
    Conferir se o link nao existe no site
    
    timeout=10s


# Conferir se não existe o segmento Linx- Suporte
# robot -d ./logs filtro.robot