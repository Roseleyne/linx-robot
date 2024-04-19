*** Settings ***

Library    SeleniumLibrary

*** Keywords ***

Retorno a pagina inicial

    Open Browser    url=https://www.linx.com.br/matriz-e-filiais/    browser=chrome
    Go To           url=https://www.linx.com.br/
    Close Browser

* Test Cases ***

Cenario 5: Retornar a pagina inicial
    
    Retorno a pagina inicial

# retornar a página inicial    
# robot -d ./logs retorno.robot
   