*** Settings ***
Library    SeleniumLibrary
Library    XML
Variables    ../../Ressources/Locators/Locators.py

*** Variables ***
${vURL}    http://35.188.55.52/share/page/


*** Keywords ***
Deplacer dachelts
    [Arguments]    ${nomSite}    ${DASHLET_SOURCE}
    Click Element    ${Roue_Donte}
    Click Element    ${Dashboard_Personolize}
    Wait Until Element Is Visible    ${DASHLET_SOURCE}
    Wait Until Element Is Visible    ${DASHLET_TARGET}
    Drag And Drop    ${DASHLET_SOURCE}    ${DASHLET_TARGET}
    Click Button    ${BTN_OK}
    Sleep    2s
