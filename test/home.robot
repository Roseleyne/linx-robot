*** Settings ***

Library         Browser

***Keywords***

Home Page
     New Browser       browser=chromium         headless=False
     New Page   https://giuqa.unimed.coop.br/login


*** Test Cases ***

Cenário 1: Acessar a pagina home do site
     
     Home Page

     

# acessar o site da Linx (linx.com.br) >>> 
# robot -d ./logs home.robot