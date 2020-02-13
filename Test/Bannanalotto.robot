*** Settings ***
Library    SeleniumLibrary   
 
*** Test Cases ***
Connexion
    Open Browser    none    chrome
    Maximize Browser Window
    Go To    https://www.bananalotto.fr/subscribe.html
    Wait Until Element Is Visible    xpath://div[@id='qcCmpUi']
    Click Button    xpath://button[@class='qc-cmp-button']    

Identification
    Input Text    xpath://input[@id='connect-login']    jiraoutuira@gmail.com    
    Input Password    xpath://input[@id='connect-password']    Outu1rajir
    Click Button    xpath://button[@class='btn btn--fit']
    Wait Until Element Is Visible    xpath://a[@id='dod-mds-container-btn-close']
    Click Button    xpath://a[@id='dod-mds-container-btn-close']
    Wait Until Page Contains    Skip Ad
    Click Button    xpath://img[@id='close_button'] 
    
Deconnexion
    Wait Until Element Is Visible    xpath://a[@class='panel__action icon-close']
    Click Button    xpath://a[@class='panel__action icon-close']
    
Close Browser
    Close Browser
    
