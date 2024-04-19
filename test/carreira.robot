*** Settings ***

Library         Browser

***Keywords***

Page Carreira
     New Browser       browser=chromium         headless=False
     New Page   https://www.linx.com.br/carreira-linx/


*** Test Cases ***

Cenário 1: Acessar a pagina home do site
     
     Page Carreira

     

# acessar pagina institucional (linx.com.br) >>> 
# robot -d ./logs carreira.robot