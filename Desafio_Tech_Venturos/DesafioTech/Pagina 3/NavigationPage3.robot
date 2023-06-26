*** Settings ***
Documentation    Essa suite testa o login
Resource         NavigationResource.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador


*** Test Cases ***

Cenário: Acessar a pagina 3
    Dado que estou na página de login
    Quando insiro um username e password válidos
    E clico no botão de login
    Então devo ser redirecionado para a página inicial
    E devo clicar na opção Page 3

Cenário: Acessar a pagina dois atraves da navegação da pagina 3
    Dado que estou na página de login
    Quando insiro um username e password válidos
    E clico no botão de login
    Então devo ser redirecionado para a página inicial
    E devo clicar na opção Page 3
    E depois na opção de Page 2

Cenário: Acessar a pagina 1 atraves da navegação da pagina 3
    Dado que estou na página de login
    Quando insiro um username e password válidos
    E clico no botão de login
    Então devo ser redirecionado para a página inicial
    E devo clicar na opção Page 3
    E depois na opção de Page 1

Cenário: Acessar a pagina Home atraves da navegação da pagina 3
    Dado que estou na página de login
    Quando insiro um username e password válidos
    E clico no botão de login
    Então devo ser redirecionado para a página inicial
    E devo clicar na opção Page 3
    E depois na opção Home

Cenário: Acessar a pagina 1 atraves da navegação da pagina 3 e passar a pagina
    Dado que estou na página de login
    Quando insiro um username e password válidos
    E clico no botão de login
    Então devo ser redirecionado para a página inicial
    E devo clicar na opção Page 3
    E depois na opção de Page 1
    Passar a pagina para a proxima
