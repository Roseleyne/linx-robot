*** Settings ***
Documentation          Ações, step e elementos da funcionalidade de cadastro

Library         Browser

***Keywords***
Go to page          #ir até a página
    Click         css=a[href="/signup"]

...Wait For Elements State       form h1     visible 5000         #aguardar estado do elemento
...Get Text                      form h1     equal           Faça o seu cadastro     #obter o texto
    
Fill signup form     #preencha o formulário da inscrição
    [Arguments]      ${dog_walker}
    Fill Text        css=input[name=name]                        ${dog_walker}[name]
    Fill Text        css=input[name=email]                       ${dog_walker}[email]
    Fill Text        css=input[name=cpf]                         ${dog_walker}[cpf]
    Fill Text        css=input[name=cep]                         ${dog_walker}[cep]

    Click            css=input[type=button][value$=CEP]

    Get Property     css=input[name=addressStreet]      value        equal    ${dog_walker}[addressStreet]
    Get Property     css=input[name=addressDistrict]    value        equal    ${dog_walker}[addressDistrict]
    Get Property     css=input[name=addressCityUf]      value        equal    ${dog_walker}[addressCityUf]

    Fill Text        css=input[name=addressNumber]               ${dog_walker}[addressNumber]
    Fill Text        css=input[name=addressDetails]              ${dog_walker}[addressDetails]

    Click            xpath=//span[text()="${dog_walker}[addition_service]"]/..
    Take Screenshot              Selector=//span[text()="${dog_walker}[addition_service]"]/..

    Upload File By Selector           css=input[type=file]       ${EXECDIR}/resource/fixtures/${dog_walker}[cnh]

Submit signup form       #enviar formulário da inscrição
    Click            css=.button-register
    
Popup should be          #o pop-up deve ser
    Wait For Elements State     css=.swal2-html-container        visible  5
    Get Text                    css=.swal2-html-container        equal    Recebemos o seu cadastro e em breve retornaremos o contato

Alert shourd be          #alerta deve ser
    [Arguments]                    ${expetecd_text}

    Wait for Elements State      css=h1 >> text=${expetecd_text}
    ...      visible    5