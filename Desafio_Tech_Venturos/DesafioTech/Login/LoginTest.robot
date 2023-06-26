*** Settings ***
Documentation    Essa suite testa o login
Resource         LoginResource.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador

*** Test Cases ***

#Funcionalidade: Login na aplicação web

Cenário: Login bem sucedido
    [Tags]        Login
    Dado que estou na página de login
    Quando insiro um username e password válidos
    E clico no botão de login
    Então devo ser redirecionado para a página inicial

Cenário: Login com username inválido
    [Tags]        Login
    Dado que estou na página de login
    Quando insiro um username inválido e uma senha válida
    E clico no botão de login
    Então devo ver uma mensagem de erro indicando "There was a problem logging in: Login/Password is incorrect"

Cenário: Login com password inválida
    [Tags]        Login
    Dado que estou na página de login
    Quando insiro um username válido e uma senha inválida
    E clico no botão de login
    Então devo ver uma mensagem de erro indicando "There was a problem logging in: Login/Password is incorrect"

Cenário: Login com campos em branco
    [Tags]        Login
    Dado que estou na página de login
    Quando deixo os campos de username e senha em branco
    E clico no botão de login
    Então devo ver uma mensagem de erro indicando "Please input your username e Please input your Password."

Cenário: Login com campo username em branco
    [Tags]        Login
    Dado que estou na página de login
    Quando deixo o campo de username em branco
    E clico no botão de login
    Então devo ver uma mensagem de erro indicando "Please input your username."

Cenário: Login com campo password em branco
    Dado que estou na página de login
    Quando deixo o campo de password em branco
    E clico no botão de login
    Então devo ver uma mensagem de erro indicando "Please input your Password."

