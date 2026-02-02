*** Settings ***
Resource    ../Ressources/Keywords/Login_Logout_keywords.robot
Resource    ../Ressources/Keywords/Creer_Site_keywords.robot
Resource    ../Ressources/Keywords/Ajouter_Blog_keywords.robot
Resource    ../Ressources/Keywords/Creer_Article_keywords.robot
Resource    ../Ressources/Keywords/Supprimer_article_keywords.robot
Library    SeleniumLibrary
*** Variables ***
${vURL}    https://35.188.55.52/share/page/
${vBROWSER}    chrome
${vUser}    adminEquipe3
${VPassword}    123456789
${nomSite}    Site2TestEquipe3
${vNomListe}    AGENDA
${vNomElementListe}    test2
${VNomArticle1}        Article1



*** Test Cases ***
TC
    Login    ${vURL}    ${vBROWSER}    ${vUser}    ${VPassword}
    Creer un site    ${vNom_Site}        ${vDescription_Site}  
    Creer un article    ${vNom_Site}    ${VNomArticle1}  
    Supprimer un article    ${vNom_Site}    ${VNomArticle1}