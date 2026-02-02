*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary
Variables    ../../Ressources/Locators/Locators.py
 
*** Variables ***
${vURL}    http://35.188.55.52/share/page/
${SEL_TIMEOUT}    3s
${vNom_Site}      AtikaSite5
${Reference}    test1
  
*** Keywords ***
Creer un element de liste
    [Arguments]     ${vNom_Site}    ${Reference}
    Go To    ${vURL}site/${vNom_Site}/dashboard
    Sleep    2s
    Click Element    ${Liste_Donnees}
    Wait Until Element Is Visible    ${NomSite1}${vNom_Site}${NomSite2}
    Click Element    ${Agende_Link}
    Click Element    ${Nouveau_Element_Link}
    Input Text    ${Reference_txt}    ${Reference}
    Click Button    ${btn_Enregistrer_element}