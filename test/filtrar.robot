
# filtrar pelo segmento linx - Tecnologia e produto

*** Settings ***

Library    SeleniumLibrary

*** Keywords ***

Deve fazer o filtro do segmento Linx de tecnologia e produto

    Open Browser    url=https://www.linx.com.br/    browser=chrome
    Element Should Not Be Visible    link=https://www.linx.com.br/tecnologia-e-produto
    Close Browser

*** Test Cases ***

Cenario 6: Filtrar a categoria Tecnologia e produto

    Deve fazer o filtro do segmento Linx de tecnologia e produto


# filtrar pelo segmento linx - Tecnologia e produto  
# robot -d ./logs filtrar.robot  
    
   