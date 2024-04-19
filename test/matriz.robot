*** Settings ***

Library         Browser

***Keywords***

Categoria Matriz-filiais
     New Browser       browser=chromium         headless=False
     New Page          https://giuqa.unimed.coop.br/login


*** Test Cases ***

Cenário 2: Acesso a categoria matriz/filiais
     
     Categoria Matriz-filiais

# acessar Institucional > Matriz e Filiais
# robot -d ./logs matriz.robot