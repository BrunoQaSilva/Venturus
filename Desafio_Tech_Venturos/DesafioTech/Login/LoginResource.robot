*** Settings ***
Library   SeleniumLibrary

*** Keywords ***

Abrir o navegador   
     Open Browser   browser=chrome
     Maximize Browser Window
     
Fechar o navegador
    Close Browser
    
Dado que estou na página de login
    Go To    url=http://localhost:3000/

Quando insiro um username e password válidos
    #Login ja realizado
    Run Keyword And Ignore Error    Wait Until Element Is Visible    locator=//span[@class='ant-avatar-string'][contains(.,'TU')]
    Run Keyword And Ignore Error    Click Element    locator=//span[@class='ant-avatar-string'][contains(.,'TU')]
    Sleep    2
    Run Keyword And Ignore Error    Click Element    locator=//li[@data-cy='userMenuItem'][contains(.,'Logout')]
    #Realizando novo login
    Input Text    locator=//input[@placeholder='Username'][contains(@id,'username')]      text=testuser
    Input Text    locator=//input[@type='password'][contains(@id,'password')]     text=pl123
    Sleep    2
E clico no botão de login
    Click Element    locator=//button[@type='submit'][contains(.,'Log in')]

Então devo ser redirecionado para a página inicial
    Wait Until Element Is Visible    locator=//span[@class='ant-avatar-string'][contains(.,'TU')]

Quando insiro um username inválido e uma senha válida
    #Login ja realizado
    Run Keyword And Ignore Error    Wait Until Element Is Visible    locator=//span[@class='ant-avatar-string'][contains(.,'TU')]
    Run Keyword And Ignore Error    Click Element    locator=//span[@class='ant-avatar-string'][contains(.,'TU')]
    Sleep    2
    Run Keyword And Ignore Error    Click Element    locator=//li[@data-cy='userMenuItem'][contains(.,'Logout')]
    #Realizando novo login
    Wait Until Element Is Visible    locator=//input[@placeholder='Username'][contains(@id,'username')]
    Input Text    locator=//input[@placeholder='Username'][contains(@id,'username')]      text=lala
    Input Text    locator=//input[@type='password'][contains(@id,'password')]     text=pl123
    Sleep    2

Então devo ver uma mensagem de erro indicando "There was a problem logging in: Login/Password is incorrect"
    Sleep    2
    Wait Until Element Is Visible    locator=//p[@class='error-message'][contains(.,'There was a problem logging in: Login/Password is incorrect')]

Quando insiro um username válido e uma senha inválida
    #Login ja realizado
    Run Keyword And Ignore Error    Wait Until Element Is Visible    locator=//span[@class='ant-avatar-string'][contains(.,'TU')]
    Run Keyword And Ignore Error    Click Element    locator=//span[@class='ant-avatar-string'][contains(.,'TU')]
    Run Keyword And Ignore Error    Click Element    locator=//li[@data-cy='userMenuItem'][contains(.,'Logout')]
    #Realizando novo login
    Wait Until Element Is Visible    locator=//input[@placeholder='Username'][contains(@id,'username')]
    Input Text    locator=//input[@placeholder='Username'][contains(@id,'username')]      text=testuser
    Input Text    locator=//input[@type='password'][contains(@id,'password')]     text=pl1245423

Quando deixo os campos de username e senha em branco
    #Login ja realizado
    Run Keyword And Ignore Error    Wait Until Element Is Visible    locator=//span[@class='ant-avatar-string'][contains(.,'TU')]
    Run Keyword And Ignore Error    Click Element    locator=//span[@class='ant-avatar-string'][contains(.,'TU')]
    Run Keyword And Ignore Error    Click Element    locator=//li[@data-cy='userMenuItem'][contains(.,'Logout')]
    #Realizando novo login
    Wait Until Element Is Visible    locator=//input[@placeholder='Username'][contains(@id,'username')]

Então devo ver uma mensagem de erro indicando "Please input your username e Please input your Password."
    Wait Until Element Is Visible    locator=//div[@class='ant-form-explain'][contains(.,'Please input your username.')]
    Wait Until Element Is Visible    locator=//div[@class='ant-form-explain'][contains(.,'Please input your Password.')]


Quando deixo o campo de username em branco
    #Login ja realizado
    Run Keyword And Ignore Error    Wait Until Element Is Visible    locator=//span[@class='ant-avatar-string'][contains(.,'TU')]
    Run Keyword And Ignore Error    Click Element    locator=//span[@class='ant-avatar-string'][contains(.,'TU')]
    Run Keyword And Ignore Error    Click Element    locator=//li[@data-cy='userMenuItem'][contains(.,'Logout')]
    #Realizando novo login
    Wait Until Element Is Visible    locator=//input[@placeholder='Username'][contains(@id,'username')]
    Input Text    locator=//input[@type='password'][contains(@id,'password')]     text=pl123
  

Então devo ver uma mensagem de erro indicando "Please input your username."
    Wait Until Element Is Visible    locator=//div[@class='ant-form-explain'][contains(.,'Please input your username.')]

Quando deixo o campo de password em branco
    #Login ja realizado
    Run Keyword And Ignore Error    Wait Until Element Is Visible    locator=//span[@class='ant-avatar-string'][contains(.,'TU')]
    Run Keyword And Ignore Error    Click Element    locator=//span[@class='ant-avatar-string'][contains(.,'TU')]
    Run Keyword And Ignore Error    Click Element    locator=//li[@data-cy='userMenuItem'][contains(.,'Logout')]
    #Realizando novo login
    Wait Until Element Is Visible    locator=//input[@placeholder='Username'][contains(@id,'username')]
    Input Text    locator=//input[@placeholder='Username'][contains(@id,'username')]      text=testuser

Então devo ver uma mensagem de erro indicando "Please input your Password."
    Wait Until Element Is Visible    locator=//div[@class='ant-form-explain'][contains(.,'Please input your Password.')]
