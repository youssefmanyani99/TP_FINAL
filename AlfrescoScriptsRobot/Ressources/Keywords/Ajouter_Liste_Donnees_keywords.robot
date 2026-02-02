*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary
Variables    ../../Ressources/Locators/Locators.py
 
*** Variables ***
${vURL}    http://35.188.55.52/share/page/
${SEL_TIMEOUT}    3s
${vNom_Site}      AtikaSite5
${vDescription_Site}            Description de mon site 
 
 
*** Keywords ***
Ajouter une liste de données
    [Arguments]     ${vNom_Site}
    Click Element    ${MENU_SITES}
    Click Element    ${NomSite1}${vNom_Site}${NomSite2}
    Wait Until Element Is Visible    ${NomSite1}${vNom_Site}${NomSite2}
    Click Element    ${Roue_Donte} 
    Click Element    ${Link_Personnaliser}
    Drag And Drop    ${link_Liste_Donnee}    ${Page_actuel}
    Click Button    ${btn_OK_List}
    

