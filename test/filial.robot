*** Settings ***

Library    SeleniumLibrary

*** Keywords ***

Verificar Cascavel

    Open Browser    url=https://www.linx.com.br/matriz-e-filiais/    browser=chrome
    Maximize Browser Window
    Page Should Contain Element    //h3[contains(.,'Cascavel/PR')]

*** Test Cases ***

Cenario 3: Verificar se a pagina contem Cascavel/PR

    Verificar Cascavel

    timeout=10s
    Take Screenshot


# verifique se existe a filial CASCAVEL/PR  
# robot -d ./logs filial.robot  
    
   


     
     
     
   