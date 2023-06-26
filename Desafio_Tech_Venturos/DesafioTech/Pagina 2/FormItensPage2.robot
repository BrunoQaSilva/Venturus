*** Settings ***
Documentation    Essa suite testa o login
Resource         FormItensResource.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador
Suite Setup      Definir tempo de espera global


*** Test Cases ***

#Funcionalidade: Login na aplicação web

Cenário: Preencher formulario na horizontal
    Dado que estou na página de login
    Quando insiro um username e password válidos
    E clico no botão de login
    Então devo ser redirecionado para a página inicial
    E devo clicar na opção Page 2
    E devo veriricar todos os campos do formulario
    E preencher todo o formulario no modo horizontal

Cenário: Preencher formulario na vertical
    Dado que estou na página de login
    Quando insiro um username e password válidos
    E clico no botão de login
    Então devo ser redirecionado para a página inicial
    E devo clicar na opção Page 2
    E devo veriricar todos os campos do formulario
    E preencher todo o formulario no modo vertical
    
Cenário: Preencher formulario na In Line
    Dado que estou na página de login
    Quando insiro um username e password válidos
    E clico no botão de login
    Então devo ser redirecionado para a página inicial
    E devo clicar na opção Page 2
    E devo veriricar todos os campos do formulario
    E preencher todo o formulario no modo In Line

Cenário: Preencher formulario na horizontal alterando o cascader para Sao Paulo capital
    Dado que estou na página de login
    Quando insiro um username e password válidos
    E clico no botão de login
    Então devo ser redirecionado para a página inicial
    E devo clicar na opção Page 2
    E devo veriricar todos os campos do formulario
    E preencher todo o formulario no modo horizontal
    E alterar o Cascader para São paulo capital

Cenário: Preencher formulario na horizontal alterando o Select para Canada
    Dado que estou na página de login
    Quando insiro um username e password válidos
    E clico no botão de login
    Então devo ser redirecionado para a página inicial
    E devo clicar na opção Page 2
    E devo veriricar todos os campos do formulario
    E preencher todo o formulario no modo horizontal
    E alterar o Select para Canada