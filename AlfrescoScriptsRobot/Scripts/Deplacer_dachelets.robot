*** Settings ***
Library    Screenshot
Library    String
Resource    ../Ressources/Keywords/Login_Logout_keywords.robot
Resource    ../Ressources/Keywords/Dupliquer_element_keywords.robot
Resource    ../Ressources/Keywords/Creer_Site_keywords.robot
Resource    ../Ressources/Keywords/Deplacer_dachelets_keywords.robot

*** Variables ***
${vURL}    http://35.223.20.86/share/page/
${vBROWSER}    chrome
${vUser}    adminEquipe3
${VPassword}    123456789
${nomSite}     Atikatest10




*** Test Cases ***
TC1
     Login    ${vURL}    ${vBROWSER}    ${vUser}    ${VPassword}
     Creer un site    ${vNom_Site}    ${vDescription_Site}
     Deplacer dachelts    ${nomSite}    ${DASHLET_SOURCE}
     
