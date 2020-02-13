*** Settings ***
 Library    SeleniumLibrary

*** Test Cases ***
PremierEssai
    Open Browser    https://www.random.org/playing-cards/    Chrome
    Delete All Cookies
    Clear Element Text    xpath://input[@name='cards']
    Input Text    xpath://input[@name='cards']    10    
    Select From List By Value    xpath://select[@name='decks']    5
    Unselect Checkbox    xpath://input[@name='spades']
    Unselect Checkbox    xpath://input[@name='hearts']
    Unselect Checkbox    xpath://input[@name='diamonds']
    Unselect Checkbox    xpath://input[@name='clubs']
    Unselect Checkbox    xpath://input[@name='aces']
    Unselect Checkbox    xpath://input[@name='twos']
    Unselect Checkbox    xpath://input[@name='threes']
    Unselect Checkbox    xpath://input[@name='fours']
    Unselect Checkbox    xpath://input[@name='fives']
    Unselect Checkbox    xpath://input[@name='sixes']
    Unselect Checkbox    xpath://input[@name='sevens']
    Unselect Checkbox    xpath://input[@name='eights']    
    Unselect Checkbox    xpath://input[@name='nines']
    Unselect Checkbox    xpath://input[@name='tens']
    Unselect Checkbox    xpath://input[@name='jacks']
    Unselect Checkbox    xpath://input[@name='queens']
    Unselect Checkbox    xpath://input[@name='kings']
    Select Checkbox    xpath://input[@name='bjoker']
    Select Checkbox    xpath://input[@name='rjoker']
    Unselect Checkbox    xpath://input[@name='remaining']
    Select Checkbox    xpath://input[@name='text']
    Sleep    5 seconds
    Checkbox Should Be Selected    xpath://input[@name='bjoker']
    Click Button    xpath://p[6]//input[1]
    Sleep    5 seconds
    Click Button    xpath://body//input[6]
    Sleep    5 seconds
    Click Button    xpath://body//input[7]
    Sleep    5 seconds
    Click Button    xpath://p[6]//input[2]
    Checkbox Should Not Be Selected    xpath://input[@name='bjoker']
    Sleep    5 seconds
    Click Button    xpath://p[6]//input[1]
    Sleep    5 seconds
    Close Browser
        
*** Variable ***
${toto}    n'importe quoi
@{liste}    numero 1    bleu    Bonjour
&{dico}    1=creer    2=etc

*** Keyword ***
Concatener
        [Arguments]    ${Arg1}    ${Arg2}
        Log    ${Arg1} ${Arg2}
        Log    ${Arg2} ${Arg1}