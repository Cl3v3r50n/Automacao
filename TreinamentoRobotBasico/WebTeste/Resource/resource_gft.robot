*** Settings ***
Library            SeleniumLibrary

*** Variables ***
${BROWSER}            FireFox
${URL_BASE}           https://www.gft.com/br/pt

*** Keywords ***
###Setup & Teardown###

Abrir Navegador
    Open Browser                    ${URL_BASE}        ${BROWSER}
    Maximize Browser Window

Fechar Navegador
    Capture Page Screenshot
    Close Browser


###Passo-a-Passo

###cenário 01
Dado que eu esteja Acessando o site da GFT Brasil
    Go To                            url=${URL_BASE}

Quando eu clicar no botão "02"
    Wait Until Element Is Visible    xpath=//*[@id="CybotCookiebotDialogPoweredbyImage"]
    Click Button                     id=CybotCookiebotDialogBodyLevelButtonLevelOptinAllowallSelection
    Click Button                     xpath=//*[@id="main"]/div/div[1]/div/div/div[3]/div[3]/div/button[2]

E eu clicar no botão "Mostrar mais"
    Wait Until Element Is Visible    xpath=//*[@id="main"]/div/div[1]/div/div/div[1]/div/div[2]/div/div[5]/div[2]
    Click Link                       xpath=//*[@id="main"]/div/div[1]/div/div/div[1]/div/div[2]/div/div[5]/div[2]/a


Então eu vejo a página "Como a GFT cria valor"
    Element Text Should Be           xpath=//*[@id="main"]/section[1]/div/div[1]/div/h1    Como a GFT cria valor


###API Testes###
###Cenário 01
Dado que eu esteja conectado ao endpoint

