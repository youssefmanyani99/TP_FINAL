*** Settings ***
Library    Screenshot
Library    String
Resource    ../Ressources/Keywords/Login_Logout_keywords.robot
Resource    ../Ressources/Keywords/Dupliquer_element_keywords.robot
Resource    ../Ressources/Keywords/Creer_Site_keywords.robot
Resource    ../Ressources/Keywords/Ajouter_Liste_Donnees_keywords.robot
Resource    ../Ressources/Keywords/Creer_Nouvelle_Liste_keywords.robot


*** Variables ***
${vURL}    http://localhost:8082
${vBROWSER}    chrome
${vUser}    6366435
${VPassword}    6366435
${nomSite}     youssef




*** Test Cases ***
TC1
     Login    ${vURL}    ${vBROWSER}    ${vUser}    ${VPassword}
     Creer un site    ${vNom_Site}    ${vDescription_Site}
     Ajouter une liste de données    ${vNom_Site}
     Creer_une_nouvelle_liste_de_donnee    ${vNom_Site}     ${vNomListe}    ${typeDeListeV}    ${Description}