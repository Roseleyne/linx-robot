*** Settings ***
Documentation          Arquivo principal do projeto

Library         Browser

Resource            env.resource
Resource            action/unimed.resource

***Keywords***

Start session
    New Browser       broswer=$(BROWSER)         headless=False
    New Page          https://giuqa.unimed.coop.br/login

    Wait For Elements State         css=h1 >> text=Tem solução pra tudo, tem linx pra tudo
    ...                 visible     5

Finish session
    Take Screenshot           fullPage-True    