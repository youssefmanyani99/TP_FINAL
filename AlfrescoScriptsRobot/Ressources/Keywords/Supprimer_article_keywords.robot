*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary
Variables    ../../Ressources/Locators/Locators.py
 
*** Variables ***
${vURL}    http://35.188.55.52/share/page/
${vNom_Site}    AtikaSite6
${VNomArticle1}        Article1
 
*** Keywords ***
Supprimer un article    
    [Arguments]     ${vNom_Site}    ${VNomArticle1}
    Click Element    ${BTN_Delete}
    Click Element    ${BTN_Confirm}