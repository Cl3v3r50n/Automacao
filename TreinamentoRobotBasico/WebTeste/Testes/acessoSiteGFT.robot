*** Settings ***
Documentation        teste para verificar o acesso ao site da GFT Brasil
...                  comandos para executar o robot: robot -d ./Resultados Testes\acessoSiteGFT.robot (executa a suite)
...                                                  robot -t "nome do teste" nome do arquivo.robot (executa o teste)
...                                                  robot -i Acessos nome do arquivo.robot (execução por tags)
...                                                  robot -e Acesso nome do arquivo.robot (executa todos os testes da suite, exceo os de acesso)
...                                                  robot -v BROWSER:Chrome -d Resultados nome do arquivo.robot (troca o navegador apenas na execução em questão)
Resource    ../resource/resource_gft.robot

Test Setup           Abrir navegador
#Test Teardown        Fechar navegador

*** Test Cases ***
Cenário: Navegar no site da GFT Brasil
    [Documentation]            teste para verificar o acesso ao site da GFT Brasil
    [Tags]                     Acesso ao site e navegação
    Dado que eu esteja Acessando o site da GFT Brasil
    Quando eu clicar no botão "02"
    E eu clicar no botão "Mostrar mais"
    Então eu vejo a página "Como a GFT cria valor"

