*** Settings ***
Documentation        Suite para testar cadastro de usuário
...                  comand line de execução: robot -d ./Results .\Teste\api_testing_usuarios.robot 
Resource          ../resource/api_testing_usuarios_resouce.robot
Resource          ../resource/APITest2_resource.robot

*** Test Cases ***
Cenário 01: Verificar o status da API
    Dado que eu faça uma chamada GET à API 
    E que eu verifique se o status de resposta é igual a 200.

# Cenário 02: Adicionar um novo usuário 
#     Dado que eu tenha uma sessão criadade consulta da API 
#     E que eu faça uma chamada POST à API com dados de corpo em formato JSON 
#     E eu verifique se o status de resposta é igual a 201 (Criado).