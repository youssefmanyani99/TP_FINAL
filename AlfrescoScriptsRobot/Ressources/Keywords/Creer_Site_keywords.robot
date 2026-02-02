*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary
Variables    ../../Ressources/Locators/Locators.py
 
*** Variables ***
${vURL}    http://35.188.55.52/share/page/
${SEL_TIMEOUT}    3s
${vNom_Site}      AtikaSite6
${vDescription_Site}            Description de mon site 
 
 
*** Keywords ***
Creer un site
    [Arguments]     ${vNom_Site}        ${vDescription_Site}
    Click Element    ${MENU_SITES}
    Wait Until Element Is Visible    ${ITEM_CREER_SITE}    ${SEL_TIMEOUT}
    Click Element    ${ITEM_CREER_SITE}
    Wait Until Element Is Visible    ${FIELD_NOM_SITE}    ${SEL_TIMEOUT}
    Input Text        ${FIELD_NOM_SITE}    ${vNom_Site}
    Input Text        ${FIELD_URL_SITE}   ${vNom_Site}
    Input Text        ${FIELD_DESC_SITE}   ${vDescription_Site}
    Click Element     ${RADIO_PUBLIC}
    Wait Until Element Is Visible     ${BTN_CREER_SITE}    ${SEL_TIMEOUT}
    Click Element    ${BTN_CREER_SITE}
   
    Wait Until Page Contains   ${vNom_Site}     ${SEL_TIMEOUT}