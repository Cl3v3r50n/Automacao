*** Settings ***
Library  RequestsLibrary
Library  String
Library  Collections

*** Variables ***
${API_URL}           https://serverest.dev/
${HEADERS}           { "Content-Type": "application/json" }
${REQUEST}           Get
${response}          200

*** Keywords ***
###Cenário 01: Verificar status da API###
Dado que eu faça uma chamada GET à API
    Create Session    api_session    ${API_URL}
    ${response}=      ${REQUEST}     Get    api_session    headers=${HEADERS}
    

E que eu verifique se o status de resposta é igual a 200.
    Should Be Equal As Strings    ${response.status_code}    200
    Delete Session    api_session

Delete Session
    [Arguments]    ${api_session}

Adicionar um novo usuário
    Create Session                            api_session                             ${API_URL}
    ${data}=                                  Create Dictionary                       username=testuser    password=secret
    ${REQUEST}=                               Set Variable                            Request
    ${response}=                              Post ${Request}                         api_session         headers=${HEADERS}    json=${data}
    Should Be Equal As Strings                ${response.status_code}                 201
    ${Session}=    Delete Session             api_session

###Cenário 02: cadastrar novo usuário