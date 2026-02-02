*** Settings ***
Library    SeleniumLibrary
Library    XML
Variables    ../../Ressources/Locators/Locators.py

*** Variables ***
${vURL}    https://35.188.55.52/share/page/
${nomSite}  Suite2TestEquipe3

*** Keywords ***
Dupliquer plusieurs element
    [Arguments]    ${nomSite}    ${vNomListe}    ${vNomElementListe}
    # Go To    https://35.188.55.52/share/page/user/adminEquipe3/dashboard
    # Sleep    3s
    Go To    ${vURL}site/${nomSite}/dashboard
    Sleep    2s
    Click Element    ${Liste_Donnees}
    Wait Until Element Is Visible    ${NomSite1}${vNomListe}${NomSite2}
    Click Element    ${NomSite1}${vNomListe}${NomSite2}
    Wait Until Element Is Visible    ${NomElement1}${vNomElementListe}${NomElement2}
    Select Checkbox    ${NomElement1}${vNomElementListe}${NomElement2}
    Click Element    ${ElementList_btn}
    Click Element    ${Dupliquer_btn}
    Wait Until Element Is Visible    (//div[text()='test2'])[2]


