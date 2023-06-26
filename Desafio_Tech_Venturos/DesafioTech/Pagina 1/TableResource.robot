*** Settings ***
Library   SeleniumLibrary
Library    XML

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
    Sleep   2
    Run Keyword And Ignore Error    Click Element    locator=//li[@data-cy='userMenuItem'][contains(.,'Logout')]
    #Realizando novo login
    Input Text    locator=//input[@placeholder='Username'][contains(@id,'username')]      text=testuser
    Input Text    locator=//input[@type='password'][contains(@id,'password')]     text=pl123
    Sleep    2
E clico no botão de login
    Click Element    locator=//button[@type='submit'][contains(.,'Log in')]

Então devo ser redirecionado para a página inicial
    Wait Until Element Is Visible    locator=//span[@class='ant-avatar-string'][contains(.,'TU')]
CLicar na opção page 1 do Menu
    Click Element    locator=//span[contains(.,'Page 1')]

Verificar se o usuario ${usuario} existe
    Sleep  3
    Table Should Contain    locator=//tbody[@class='ant-table-tbody'][contains(.,'John Brown1033Jim Green1000Joe Black1010Jim Red7545Milla Pietila9055Samina Vlasveld175145Gabrielle Sanchez23555Stephen Butler9842Willard Medina728451Byron Hansen328109')]    expected=${usuario}
    Sleep    3

Verificar o usuario Mila Laine
    Sleep  3
    Table Should Contain    locator=//div[@class='ant-table-wrapper'][contains(.,'NameBorrowRepaymentMilla Laine2037812')]    expected=Milla Laine
    Sleep    3

Clicar na seta para mudar de pagina
    Sleep     2
    Scroll Element Into View    locator=(//a[contains(@class,'ant-pagination-item-link')])[2]
    Click Element    locator=(//a[contains(@class,'ant-pagination-item-link')])[2]

Clico na seta ao lado duas vezes de name para alterar a ordem
    Click Element    locator=//div[@class='ant-table-column-sorters'][contains(.,'Name')]
    Click Element    locator=//div[@class='ant-table-column-sorters'][contains(.,'Name')]

Clico na seta ao lado uma vez de name para alterar a ordem
    Click Element    locator=//div[@class='ant-table-column-sorters'][contains(.,'Name')]

Verifico se a ordem da mesma esta crescente
    Sleep     2
    Table Should Contain    locator=//tbody[@class='ant-table-tbody'][contains(.,'Byron Hansen328109Gabrielle Sanchez23555Jim Green1000Jim Red7545Joe Black1010John Brown1033Milla Laine20378Milla Pietila9055Samina Vlasveld175145Stephen Butler9842')]   expected=Byron Hansen

Verifico se a ordem da mesma esta decrescente
    Sleep     2
    Table Should Contain    locator=//tbody[@class='ant-table-tbody'][contains(.,'Willard Medina728451Stephen Butler9842Samina Vlasveld175145Milla Pietila9055Milla Laine20378John Brown1033Joe Black1010Jim Red7545Jim Green1000Gabrielle Sanchez23555')]   expected=Willard Medina

