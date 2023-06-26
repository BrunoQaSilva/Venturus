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

E devo clicar na opção Page 2
    Click Element    locator=//span[contains(.,'Page 2')]
E devo veriricar todos os campos do formulario
    Wait Until Element Is Visible    locator=//label[@title='Radio Button'][contains(.,'Radio Button')]
    Wait Until Element Is Visible    locator=//input[contains(@placeholder,'Only letters and numbers are allowed')]
    Wait Until Element Is Visible    locator=//div[@unselectable='on'][contains(.,'Select a country')]
    Wait Until Element Is Visible    locator=//span[contains(@class,'ant-select-selection__placeholder')]
    Wait Until Element Is Visible    locator=//input[contains(@tabindex,'-1')]
    Wait Until Element Is Visible    locator=//input[contains(@placeholder,'Select date')]
    Wait Until Element Is Visible    locator=//label[@title='Slider with InputNumber'][contains(.,'Slider with InputNumber')]
    Wait Until Element Is Visible    locator=//input[contains(@class,'ant-input-number-input')]
    Wait Until Element Is Visible    locator=//button[contains(@role,'switch')]
    Wait Until Element Is Visible    locator=//textarea[contains(@placeholder,'write a comment')]

E preencher todo o formulario no modo horizontal
    Wait Until Element Is Visible    locator=//label[@title='Radio Button'][contains(.,'Radio Button')]
    Input Text       locator=//input[contains(@placeholder,'Only letters and numbers are allowed')]       text=asssadsaf
    Click Element    locator=//div[@unselectable='on'][contains(.,'Select a country')]
    Sleep   2
    Click Element    locator=//li[@role='option'][contains(.,'Brazil')]
    Sleep   2
    Click Element   locator=//span[contains(@class,'ant-select-selection__placeholder')]
    Sleep   2
    Click Element    locator=//div[@class='ant-select-dropdown ant-select-tree-dropdown ant-select-dropdown--single ant-select-dropdown-placement-bottomLeft'][contains(.,'Color')]
    Sleep   2
    Click Element    locator=//input[contains(@tabindex,'-1')]
    Sleep   2
    Click Element    locator=//li[@class='ant-cascader-menu-item ant-cascader-menu-item-expand'][contains(.,'São Paulo')]
    Sleep   2
    Click Element    locator=//li[@class='ant-cascader-menu-item'][contains(.,'Campinas')]
    Sleep   2
    Click Element   locator=//input[contains(@placeholder,'Select date')]
    Sleep   2
    Click Element    locator=//div[@class='ant-calendar-date'][contains(.,'25')]
    Sleep   2
    Input Text    locator=//input[contains(@class,'ant-input-number-input')]    text=15
    Sleep   2
    Click Element    locator=//button[contains(@role,'switch')]
    Sleep   2
    Input Text    locator=//textarea[contains(@placeholder,'write a comment')]      text=this is a text

Teste falhou por falta de scroll da pagina
    [Arguments]   ${resultado}
    Run Keyword And Continue On Failure    Log    O teste falhou por falta de scroll da pagina


E preencher todo o formulario no modo vertical
    Execute Javascript    window.resizeTo(800, 600)
    Wait Until Element Is Visible    locator=//label[@title='Radio Button'][contains(.,'Radio Button')]
    Sleep    4
    Click Element    locator=//label[@class='ant-radio-button-wrapper'][contains(.,'Vertical')]
    Input Text       locator=//input[contains(@placeholder,'Only letters and numbers are allowed')]       text=asssadsaf
    Click Element    locator=//div[@unselectable='on'][contains(.,'Select a country')]
    Sleep   2
    Click Element    locator=//li[@role='option'][contains(.,'Brazil')]
    Sleep   2
    Click Element   locator=//span[contains(@class,'ant-select-selection__placeholder')]
    Sleep   2
    Click Element    locator=//div[@class='ant-select-dropdown ant-select-tree-dropdown ant-select-dropdown--single ant-select-dropdown-placement-bottomLeft'][contains(.,'Color')]
    Sleep   2
    Click Element    locator=//input[contains(@tabindex,'-1')]
    Sleep   2
    Click Element    locator=//li[@class='ant-cascader-menu-item ant-cascader-menu-item-expand'][contains(.,'São Paulo')]
    Sleep   2
    Click Element    locator=//li[@class='ant-cascader-menu-item'][contains(.,'Campinas')]
    Sleep   2
    Click Element   locator=//input[contains(@placeholder,'Select date')]
    Sleep   2
    Click Element    locator=//div[@class='ant-calendar-date'][contains(.,'25')] 
    #Pagina esta com bug e nao gera scroll para rolar a pagina perdendo alguns elementos

E preencher todo o formulario no modo In Line
    Execute Javascript    window.resizeTo(800, 600)
    Wait Until Element Is Visible    locator=//label[@title='Radio Button'][contains(.,'Radio Button')]
    Sleep    4
    Click Element    locator=//label[@class='ant-radio-button-wrapper'][contains(.,'In line')]
    Input Text       locator=//input[contains(@placeholder,'Only letters and numbers are allowed')]       text=asssadsaf
    Sleep   2
    Click Element   locator=//span[contains(@class,'ant-select-selection ant-select-selection--single')]
    Sleep   2
    Click Element    locator=//div[@class='ant-select-dropdown ant-select-tree-dropdown ant-select-dropdown--single ant-select-dropdown-placement-bottomLeft'][contains(.,'Color')]
    Sleep   2
    Click Element    locator=//input[contains(@tabindex,'-1')]
    Sleep   2
    Click Element    locator=//li[@class='ant-cascader-menu-item ant-cascader-menu-item-expand'][contains(.,'São Paulo')]
    Sleep   2
    Click Element    locator=//li[@class='ant-cascader-menu-item'][contains(.,'Campinas')]
    Sleep   2
    Click Element   locator=//input[contains(@placeholder,'Select date')]
    Sleep   2
    Click Element    locator=//div[@class='ant-calendar-date'][contains(.,'25')] 
    Sleep   2
    Input Text    locator=//input[contains(@class,'ant-input-number-input')]    text=15
    Sleep   2
    Click Element    locator=//button[contains(@role,'switch')]
    Sleep   2
    Input Text    locator=//textarea[contains(@placeholder,'write a comment')]      text=this is a text


E alterar o Cascader para São paulo capital
    Click Element    locator=//input[contains(@tabindex,'-1')]
    Sleep   2
    Click Element    locator=//li[@class='ant-cascader-menu-item'][contains(.,'São Paulo')]
    Sleep   2
    
E alterar o Select para Canada
    Sleep  2
    Click Element    locator=//div[@class='ant-select-selection__rendered'][contains(.,'Select a countryBrazil')]
    Sleep   2
    Click Element    locator=//li[@role='option'][contains(.,'Canada')]