*** Settings ***
Documentation          Teste para acesso a página filial

Library    SeleniumLibrary

*** Keywords ***
Verificar se nao existe a filial Aparecida de Goiania

    Open Browser    url=https://www.linx.com.br/matriz-e-filiais/    browser=chrome
    Maximize Browser Window
    Wait Until Element Is Visible    //h3[contains(.,'Cascavel/PR')]    
    
*** Test Cases ***

Cenario 4: Verificar se a pagina nao contem Aparecida de Goiania

    Verificar se nao existe a filial Aparecida de Goiania
    
    timeout=10s

# verifique se não existe a filial aparecida de goiania 
# robot -d ./logs aparecida.robot   