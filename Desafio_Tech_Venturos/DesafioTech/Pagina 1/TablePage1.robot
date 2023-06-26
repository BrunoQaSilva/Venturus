*** Settings ***
Documentation    Essa suite testa o login
Resource         TableResource.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador


*** Test Cases ***

#Funcionalidade: Login na aplicação web

Cenário: Checar Usuarios especificos no formulario
    Dado que estou na página de login
    Quando insiro um username e password válidos
    E clico no botão de login
    Então devo ser redirecionado para a página inicial
    CLicar na opção page 1 do Menu
    Verificar se o usuario John Brown existe

Cenário: Checar botão de passar para proxima pagina
    Dado que estou na página de login
    Quando insiro um username e password válidos
    E clico no botão de login
    Então devo ser redirecionado para a página inicial
    CLicar na opção page 1 do Menu
    Clicar na seta para mudar de pagina
    Verificar o usuario Mila Laine

Cenário: Checar tabela inicial sem ordem
    Dado que estou na página de login
    Quando insiro um username e password válidos
    E clico no botão de login
    Então devo ser redirecionado para a página inicial
    CLicar na opção page 1 do Menu
    Verificar se o usuario John Brown existe

Cenário: Checar Ordem crescente
    Dado que estou na página de login
    Quando insiro um username e password válidos
    E clico no botão de login
    Então devo ser redirecionado para a página inicial
    CLicar na opção page 1 do Menu
    Clico na seta ao lado duas vezes de name para alterar a ordem
    Verifico se a ordem da mesma esta crescente

Cenário: Checar Ordem decrescente
    Dado que estou na página de login
    Quando insiro um username e password válidos
    E clico no botão de login
    Então devo ser redirecionado para a página inicial
    CLicar na opção page 1 do Menu
    Clico na seta ao lado uma vez de name para alterar a ordem
    Verifico se a ordem da mesma esta decrescente