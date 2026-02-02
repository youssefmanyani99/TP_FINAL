*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary
Variables    ../../Ressources/Locators/Locators.py
 
*** Variables ***
${vURL}    http://35.188.55.52/share/page/
${vNom_Site}    AtikaSite6
${VNomArticle1}        Article1
 
*** Keywords ***
Creer un article
    [Arguments]     ${vNom_Site}    ${VNomArticle1}
    Click Element    ${Link_Blog}
    Click Element    ${Link_New_Article}
    Input Text    ${Article_Title}   ${VNomArticle1}
    Click Element   ${Btn_Enregitrer_Brl}

   