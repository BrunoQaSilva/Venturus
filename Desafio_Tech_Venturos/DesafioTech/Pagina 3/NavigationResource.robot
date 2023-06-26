*** Settings ***
Library   SeleniumLibrary
Library   BuiltIn

*** Keywords ***

Abrir o navegador   
     Open Browser   browser=chrome
     Maximize Browser Window
     
Fechar o navegador
    Close Browser

Dado que estou na página de login
    Go To    url=http://localhost:3000/

Definir tempo de espera global
    Set Selenium Timeout    value=10s

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

E devo clicar na opção Page 3
    Click Element    locator=//span[contains(.,'Page 3')]

E depois na opção de Page 2
    Click Element    locator=//a[@href='#/page'][contains(.,'Page 2')]

E depois na opção de Page 1
    Click Element    locator=//span[contains(.,'Page 1/')]
    Sleep   3
E depois na opção Home
    Click Element    locator=//a[contains(.,'HOME')]
    Wait Until Element Is Visible    locator=//div[@class='ant-list-header'][contains(.,'Your challenge is:')]
Passar a pagina para a proxima
    Sleep     2
    Scroll Element Into View    locator=(//a[contains(@class,'ant-pagination-item-link')])[2]
    Click Element    locator=(//a[contains(@class,'ant-pagination-item-link')])[2]
    Sleep   4
