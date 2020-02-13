*** Settings ***
Library    SeleniumLibrary  
Library    Collections
Library    String    

Suite Setup    Open Browser    url=none    browser=chrome
Test Teardown    Sleep    5 seconds    
Suite Teardown    Close Browser

*** Variables ***
${url}    http://www.siwadam.com/hmm/jeux/bt/bt.htm
${touch}    http://www.siwadam.com/hmm/jeux/bt/batt103.gif

*** Keywords ***
Rand
    ${temp}=    Evaluate    random.randint(0,15)    random
    [return]    ${temp}
    
Path
    [arguments]    ${l}    ${c}
    [return]    xpath://img[@name='pc${l}_${c}']

Click
    #Creation du premier random
    ${l}=    Rand
    ${c}=    Rand
    ${link}=    Path    ${l}    ${c}
    #Click sur le premier path
    Run Keyword And Continue On Failure    Repeat Keyword    2 times    Click Element    ${link}
    #Recuperation de son attribut
    ${attribl}=    Get Element Attribute    ${link}    src
    #definition des nums de case autour
    ${g}=    Evaluate    ${l}-1
    ${d}=    Evaluate    ${l}+1
    ${h}=    Evaluate    ${c}-1
    ${b}=    Evaluate    ${c}+1
    ${g2}=    Evaluate    ${l}-2
    ${d2}=    Evaluate    ${l}+2
    ${h2}=    Evaluate    ${c}-2
    ${b2}=    Evaluate    ${c}+2
    ${g3}=    Evaluate    ${l}-3
    ${d3}=    Evaluate    ${l}+3
    ${h3}=    Evaluate    ${c}-3
    ${b3}=    Evaluate    ${c}+3
    ${g4}=    Evaluate    ${l}-4
    ${d4}=    Evaluate    ${l}+4
    ${h4}=    Evaluate    ${c}-4
    ${b4}=    Evaluate    ${c}+4
    ${g5}=    Evaluate    ${l}-5
    ${d5}=    Evaluate    ${l}+5
    ${h5}=    Evaluate    ${c}-5
    ${b5}=    Evaluate    ${c}+5            
    #Recuperation de chaque path valide +1
    ${verifg}=    Run Keyword And Return Status    Should Be True    ${g}>=0 and ${g}<=15      
    ${gauche}=    Run Keyword And Continue On Failure    Run Keyword If    ${verifg}==True    Path    ${g}    ${c}
    ${verifd}=    Run Keyword And Return Status        Should Be True    ${d}>=0 and ${d}<=15    
    ${droite}=    Run Keyword And Continue On Failure    Run Keyword If    ${verifd}==True    Path    ${d}    ${c}
    ${verifh}=    Run Keyword And Return Status        Should Be True    ${h}>=0 and ${h}<=15     
    ${haut}=    Run Keyword And Continue On Failure    Run Keyword If    ${verifh}==True    Path    ${l}    ${h}
    ${verifb}=    Run Keyword And Return Status        Should Be True    ${b}>=0 and ${b}<=15 
    ${bas}=    Run Keyword And Continue On Failure    Run Keyword If    ${verifb}==True    Path    ${l}    ${b}
    #Recuperation de chaque path valide +2
    ${verifg2}=    Run Keyword And Return Status    Should Be True    ${g2}>=0 and ${g2}<=15      
    ${gauche2}=    Run Keyword And Continue On Failure    Run Keyword If    ${verifg2}==True    Path    ${g2}    ${c}
    ${verifd2}=    Run Keyword And Return Status        Should Be True    ${d2}>=0 and ${d2}<=15    
    ${droite2}=    Run Keyword And Continue On Failure    Run Keyword If    ${verifd2}==True    Path    ${d2}    ${c}
    ${verifh2}=    Run Keyword And Return Status        Should Be True    ${h2}>=0 and ${h2}<=15     
    ${haut2}=    Run Keyword And Continue On Failure    Run Keyword If    ${verifh2}==True    Path    ${l}    ${h2}
    ${verifb2}=    Run Keyword And Return Status        Should Be True    ${b2}>=0 and ${b2}<=15 
    ${bas2}=    Run Keyword And Continue On Failure    Run Keyword If    ${verifb2}==True    Path    ${l}    ${b2}
    #Recuperation de chaque path valide +3
    ${verifg3}=    Run Keyword And Return Status    Should Be True    ${g3}>=0 and ${g3}<=15      
    ${gauche3}=    Run Keyword And Continue On Failure    Run Keyword If    ${verifg3}==True    Path    ${g3}    ${c}
    ${verifd3}=    Run Keyword And Return Status        Should Be True    ${d3}>=0 and ${d3}<=15    
    ${droite3}=    Run Keyword And Continue On Failure    Run Keyword If    ${verifd3}==True    Path    ${d3}    ${c}
    ${verifh3}=    Run Keyword And Return Status        Should Be True    ${h3}>=0 and ${h3}<=15     
    ${haut3}=    Run Keyword And Continue On Failure    Run Keyword If    ${verifh3}==True    Path    ${l}    ${h3}
    ${verifb3}=    Run Keyword And Return Status        Should Be True    ${b3}>=0 and ${b3}<=15 
    ${bas3}=    Run Keyword And Continue On Failure    Run Keyword If    ${verifb3}==True    Path    ${l}    ${b3}
    #Recuperation de chaque path valide +4
    ${verifg4}=    Run Keyword And Return Status    Should Be True    ${g4}>=0 and ${g4}<=15      
    ${gauche4}=    Run Keyword And Continue On Failure    Run Keyword If    ${verifg4}==True    Path    ${g4}    ${c}
    ${verifd4}=    Run Keyword And Return Status        Should Be True    ${d4}>=0 and ${d4}<=15    
    ${droite4}=    Run Keyword And Continue On Failure    Run Keyword If    ${verifd4}==True    Path    ${d4}    ${c}
    ${verifh4}=    Run Keyword And Return Status        Should Be True    ${h4}>=0 and ${h4}<=15     
    ${haut4}=    Run Keyword And Continue On Failure    Run Keyword If    ${verifh4}==True    Path    ${l}    ${h4}
    ${verifb4}=    Run Keyword And Return Status        Should Be True    ${b4}>=0 and ${b4}<=15 
    ${bas4}=    Run Keyword And Continue On Failure    Run Keyword If    ${verifb4}==True    Path    ${l}    ${b4}
    #Recuperation de chaque path valide +5
    ${verifg5}=    Run Keyword And Return Status    Should Be True    ${g5}>=0 and ${g5}<=15      
    ${gauche5}=    Run Keyword And Continue On Failure    Run Keyword If    ${verifg5}==True    Path    ${g5}    ${c}
    ${verifd5}=    Run Keyword And Return Status        Should Be True    ${d5}>=0 and ${d5}<=15    
    ${droite5}=    Run Keyword And Continue On Failure    Run Keyword If    ${verifd5}==True    Path    ${d5}    ${c}
    ${verifh5}=    Run Keyword And Return Status        Should Be True    ${h5}>=0 and ${h5}<=15     
    ${haut5}=    Run Keyword And Continue On Failure    Run Keyword If    ${verifh5}==True    Path    ${l}    ${h5}
    ${verifb5}=    Run Keyword And Return Status        Should Be True    ${b5}>=0 and ${b5}<=15 
    ${bas5}=    Run Keyword And Continue On Failure    Run Keyword If    ${verifb5}==True    Path    ${l}    ${b5}
    #En cas de touche
    #Recuperation des attributs autour
    ${verifl}=    Run Keyword And Return Status    Should Be True    "${attribl}"=="${touch}"
    Run Keyword And Continue On Failure    Run Keyword If    ${verifl}==True    Repeat Keyword    2 times    Click Element    ${gauche}
    ${attribg}=    Run Keyword And Continue On Failure    Run Keyword If    ${verifl}==True and ${verifg}==True    Get Element Attribute    ${gauche}    src
    ${verifg}=    Run Keyword And Return Status    Should Be True    "${attribg}"=="${touch}"
    Run Keyword And Continue On Failure    Run Keyword If    ${verifg}==True    Repeat Keyword    2 times    Click Element    ${gauche2}
    ${attribg2}=    Run Keyword And Continue On Failure    Run Keyword If    ${verifl}==True and ${verifg2}==True    Get Element Attribute    ${gauche2}    src
    ${verifg2}=    Run Keyword And Return Status    Should Be True    "${attribg2}"=="${touch}"
    Run Keyword And Continue On Failure    Run Keyword If    ${verifg2}==True    Repeat Keyword    2 times    Click Element    ${gauche3}
    ${attribg3}=    Run Keyword And Continue On Failure    Run Keyword If    ${verifl}==True and ${verifg3}==True    Get Element Attribute    ${gauche4}    src
    ${verifg3}=    Run Keyword And Return Status    Should Be True    "${attribg3}"=="${touch}"
    Run Keyword And Continue On Failure    Run Keyword If    ${verifg3}==True    Repeat Keyword    2 times    Click Element    ${gauche4}
    ${attribg4}=    Run Keyword And Continue On Failure    Run Keyword If    ${verifl}==True and ${verifg4}==True    Get Element Attribute    ${gauche3}    src
    ${verifg4}=    Run Keyword And Return Status    Should Be True    "${attribg4}"=="${touch}"
    Run Keyword And Continue On Failure    Run Keyword If    ${verifg4}==True    Repeat Keyword    2 times    Click Element    ${gauche5}
    Run Keyword And Continue On Failure    Run Keyword If    ${verifl}==True    Repeat Keyword    2 times    Click Element    ${droite}
    ${attribd}=    Run Keyword And Continue On Failure    Run Keyword If    ${verifl}==True and ${verifd}==True    Get Element Attribute    ${droite}    src
    ${verifd}=    Run Keyword And Return Status    Should Be True    "${attribd}"=="${touch}"
    Run Keyword And Continue On Failure    Run Keyword If    ${verifd}==True    Repeat Keyword    2 times    Click Element    ${droite2}
    ${attribd2}=    Run Keyword And Continue On Failure    Run Keyword If    ${verifl}==True and ${verifd2}==True    Get Element Attribute    ${droite2}    src
    ${verifd2}=    Run Keyword And Return Status    Should Be True    "${attribd2}"=="${touch}"
    Run Keyword And Continue On Failure    Run Keyword If    ${verifd2}==True    Repeat Keyword    2 times    Click Element    ${droite3}
    ${attribd3}=    Run Keyword And Continue On Failure    Run Keyword If    ${verifl}==True and ${verifd3}==True    Get Element Attribute    ${droite4}    src
    ${verifd3}=    Run Keyword And Return Status    Should Be True    "${attribd3}"=="${touch}"
    Run Keyword And Continue On Failure    Run Keyword If    ${verifd3}==True    Repeat Keyword    2 times    Click Element    ${droite4}
    ${attribd4}=    Run Keyword And Continue On Failure    Run Keyword If    ${verifl}==True and ${verifd4}==True    Get Element Attribute    ${droite3}    src
    ${verifd4}=    Run Keyword And Return Status    Should Be True    "${attribd4}"=="${touch}"
    Run Keyword And Continue On Failure    Run Keyword If    ${verifd4}==True    Repeat Keyword    2 times    Click Element    ${droite5}   
    Run Keyword And Continue On Failure    Run Keyword If    ${verifl}==True    Repeat Keyword    2 times    Click Element    ${haut}
    ${attribh}=    Run Keyword And Continue On Failure    Run Keyword If    ${verifl}==True and ${verifh}==True    Get Element Attribute    ${haut}    src
    ${verifh}=    Run Keyword And Return Status    Should Be True    "${attribh}"=="${touch}"
    Run Keyword And Continue On Failure    Run Keyword If    ${verifh}==True    Repeat Keyword    2 times    Click Element    ${haut2}
    ${attribh2}=    Run Keyword And Continue On Failure    Run Keyword If    ${verifl}==True and ${verifh2}==True    Get Element Attribute    ${haut2}    src
    ${verifh2}=    Run Keyword And Return Status    Should Be True    "${attribh2}"=="${touch}"
    Run Keyword And Continue On Failure    Run Keyword If    ${verifh2}==True    Repeat Keyword    2 times    Click Element    ${haut3}
    ${attribh3}=    Run Keyword And Continue On Failure    Run Keyword If    ${verifl}==True and ${verifh3}==True    Get Element Attribute    ${haut3}    src
    ${verifh3}=    Run Keyword And Return Status    Should Be True    "${attribh3}"=="${touch}"
    Run Keyword And Continue On Failure    Run Keyword If    ${verifh3}==True    Repeat Keyword    2 times    Click Element    ${haut4}
    ${attribh4}=    Run Keyword And Continue On Failure    Run Keyword If    ${verifl}==True and ${verifh4}==True    Get Element Attribute    ${haut4}    src
    ${verifh4}=    Run Keyword And Return Status    Should Be True    "${attribh4}"=="${touch}"
    Run Keyword And Continue On Failure    Run Keyword If    ${verifh4}==True    Repeat Keyword    2 times    Click Element    ${haut5}    
    Run Keyword And Continue On Failure    Run Keyword If    ${verifl}==True    Repeat Keyword    2 times    Click Element    ${bas}
    ${attribb}=    Run Keyword And Continue On Failure    Run Keyword If    ${verifl}==True and ${verifb}==True    Get Element Attribute    ${bas}    src
    ${verifb}=    Run Keyword And Return Status    Should Be True    "${attribb}"=="${touch}"
    Run Keyword And Continue On Failure    Run Keyword If    ${verifb}==True    Repeat Keyword    2 times    Click Element    ${bas2}
    ${attribb2}=    Run Keyword And Continue On Failure    Run Keyword If    ${verifl}==True and ${verifb2}==True    Get Element Attribute    ${bas2}    src
    ${verifb2}=    Run Keyword And Return Status    Should Be True    "${attribb2}"=="${touch}"
    Run Keyword And Continue On Failure    Run Keyword If    ${verifb2}==True    Repeat Keyword    2 times    Click Element    ${bas3}
    ${attribb3}=    Run Keyword And Continue On Failure    Run Keyword If    ${verifl}==True and ${verifb3}==True    Get Element Attribute    ${bas3}    src
    ${verifb3}=    Run Keyword And Return Status    Should Be True    "${attribb3}"=="${touch}"
    Run Keyword And Continue On Failure    Run Keyword If    ${verifb3}==True    Repeat Keyword    2 times    Click Element    ${bas4}
    ${attribb4}=    Run Keyword And Continue On Failure    Run Keyword If    ${verifl}==True and ${verifb4}==True    Get Element Attribute    ${bas4}    src
    ${verifb4}=    Run Keyword And Return Status    Should Be True    "${attribb4}"=="${touch}"
    Run Keyword And Continue On Failure    Run Keyword If    ${verifb4}==True    Repeat Keyword    2 times    Click Element    ${bas5}
    
    #Deuxieme tour
    ${verifl}=    Run Keyword And Return Status    Should Be True    "${attribl}"=="${touch}"
    Run Keyword And Continue On Failure    Run Keyword If    ${verifl}==True    Repeat Keyword    2 times    Click Element    ${gauche}
    ${attribg}=    Run Keyword And Continue On Failure    Run Keyword If    ${verifl}==True and ${verifg}==True    Get Element Attribute    ${gauche}    src
    ${verifg}=    Run Keyword And Return Status    Should Be True    "${attribg}"=="${touch}"
    Run Keyword And Continue On Failure    Run Keyword If    ${verifg}==True    Repeat Keyword    2 times    Click Element    ${gauche2}
    ${attribg2}=    Run Keyword And Continue On Failure    Run Keyword If    ${verifl}==True and ${verifg2}==True    Get Element Attribute    ${gauche2}    src
    ${verifg2}=    Run Keyword And Return Status    Should Be True    "${attribg2}"=="${touch}"
    Run Keyword And Continue On Failure    Run Keyword If    ${verifg2}==True    Repeat Keyword    2 times    Click Element    ${gauche3}
    ${attribg3}=    Run Keyword And Continue On Failure    Run Keyword If    ${verifl}==True and ${verifg3}==True    Get Element Attribute    ${gauche4}    src
    ${verifg3}=    Run Keyword And Return Status    Should Be True    "${attribg3}"=="${touch}"
    Run Keyword And Continue On Failure    Run Keyword If    ${verifg3}==True    Repeat Keyword    2 times    Click Element    ${gauche4}
    ${attribg4}=    Run Keyword And Continue On Failure    Run Keyword If    ${verifl}==True and ${verifg4}==True    Get Element Attribute    ${gauche3}    src
    ${verifg4}=    Run Keyword And Return Status    Should Be True    "${attribg4}"=="${touch}"
    Run Keyword And Continue On Failure    Run Keyword If    ${verifg4}==True    Repeat Keyword    2 times    Click Element    ${gauche5}
    Run Keyword And Continue On Failure    Run Keyword If    ${verifl}==True    Repeat Keyword    2 times    Click Element    ${droite}
    ${attribd}=    Run Keyword And Continue On Failure    Run Keyword If    ${verifl}==True and ${verifd}==True    Get Element Attribute    ${droite}    src
    ${verifd}=    Run Keyword And Return Status    Should Be True    "${attribd}"=="${touch}"
    Run Keyword And Continue On Failure    Run Keyword If    ${verifd}==True    Repeat Keyword    2 times    Click Element    ${droite2}
    ${attribd2}=    Run Keyword And Continue On Failure    Run Keyword If    ${verifl}==True and ${verifd2}==True    Get Element Attribute    ${droite2}    src
    ${verifd2}=    Run Keyword And Return Status    Should Be True    "${attribd2}"=="${touch}"
    Run Keyword And Continue On Failure    Run Keyword If    ${verifd2}==True    Repeat Keyword    2 times    Click Element    ${droite3}
    ${attribd3}=    Run Keyword And Continue On Failure    Run Keyword If    ${verifl}==True and ${verifd3}==True    Get Element Attribute    ${droite4}    src
    ${verifd3}=    Run Keyword And Return Status    Should Be True    "${attribd3}"=="${touch}"
    Run Keyword And Continue On Failure    Run Keyword If    ${verifd3}==True    Repeat Keyword    2 times    Click Element    ${droite4}
    ${attribd4}=    Run Keyword And Continue On Failure    Run Keyword If    ${verifl}==True and ${verifd4}==True    Get Element Attribute    ${droite3}    src
    ${verifd4}=    Run Keyword And Return Status    Should Be True    "${attribd4}"=="${touch}"
    Run Keyword And Continue On Failure    Run Keyword If    ${verifd4}==True    Repeat Keyword    2 times    Click Element    ${droite5}   
    Run Keyword And Continue On Failure    Run Keyword If    ${verifl}==True    Repeat Keyword    2 times    Click Element    ${haut}
    ${attribh}=    Run Keyword And Continue On Failure    Run Keyword If    ${verifl}==True and ${verifh}==True    Get Element Attribute    ${haut}    src
    ${verifh}=    Run Keyword And Return Status    Should Be True    "${attribh}"=="${touch}"
    Run Keyword And Continue On Failure    Run Keyword If    ${verifh}==True    Repeat Keyword    2 times    Click Element    ${haut2}
    ${attribh2}=    Run Keyword And Continue On Failure    Run Keyword If    ${verifl}==True and ${verifh2}==True    Get Element Attribute    ${haut2}    src
    ${verifh2}=    Run Keyword And Return Status    Should Be True    "${attribh2}"=="${touch}"
    Run Keyword And Continue On Failure    Run Keyword If    ${verifh2}==True    Repeat Keyword    2 times    Click Element    ${haut3}
    ${attribh3}=    Run Keyword And Continue On Failure    Run Keyword If    ${verifl}==True and ${verifh3}==True    Get Element Attribute    ${haut3}    src
    ${verifh3}=    Run Keyword And Return Status    Should Be True    "${attribh3}"=="${touch}"
    Run Keyword And Continue On Failure    Run Keyword If    ${verifh3}==True    Repeat Keyword    2 times    Click Element    ${haut4}
    ${attribh4}=    Run Keyword And Continue On Failure    Run Keyword If    ${verifl}==True and ${verifh4}==True    Get Element Attribute    ${haut4}    src
    ${verifh4}=    Run Keyword And Return Status    Should Be True    "${attribh4}"=="${touch}"
    Run Keyword And Continue On Failure    Run Keyword If    ${verifh4}==True    Repeat Keyword    2 times    Click Element    ${haut5}    
    Run Keyword And Continue On Failure    Run Keyword If    ${verifl}==True    Repeat Keyword    2 times    Click Element    ${bas}
    ${attribb}=    Run Keyword And Continue On Failure    Run Keyword If    ${verifl}==True and ${verifb}==True    Get Element Attribute    ${bas}    src
    ${verifb}=    Run Keyword And Return Status    Should Be True    "${attribb}"=="${touch}"
    Run Keyword And Continue On Failure    Run Keyword If    ${verifb}==True    Repeat Keyword    2 times    Click Element    ${bas2}
    ${attribb2}=    Run Keyword And Continue On Failure    Run Keyword If    ${verifl}==True and ${verifb2}==True    Get Element Attribute    ${bas2}    src
    ${verifb2}=    Run Keyword And Return Status    Should Be True    "${attribb2}"=="${touch}"
    Run Keyword And Continue On Failure    Run Keyword If    ${verifb2}==True    Repeat Keyword    2 times    Click Element    ${bas3}
    ${attribb3}=    Run Keyword And Continue On Failure    Run Keyword If    ${verifl}==True and ${verifb3}==True    Get Element Attribute    ${bas3}    src
    ${verifb3}=    Run Keyword And Return Status    Should Be True    "${attribb3}"=="${touch}"
    Run Keyword And Continue On Failure    Run Keyword If    ${verifb3}==True    Repeat Keyword    2 times    Click Element    ${bas4}
    ${attribb4}=    Run Keyword And Continue On Failure    Run Keyword If    ${verifl}==True and ${verifb4}==True    Get Element Attribute    ${bas4}    src
    ${verifb4}=    Run Keyword And Return Status    Should Be True    "${attribb4}"=="${touch}"
    Run Keyword And Continue On Failure    Run Keyword If    ${verifb4}==True    Repeat Keyword    2 times    Click Element    ${bas5}
     

*** Test Cases ***
Connexion
    Go To    ${url}
    
Game
    :FOR    ${i}    IN RANGE    ${1}    ${257}    ${1}  
    \    Run Keyword And Continue On Failure    Click
