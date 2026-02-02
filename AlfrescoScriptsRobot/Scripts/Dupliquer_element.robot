*** Settings ***
Resource    ../Ressources/Keywords/Dupliquer_element_keywords.robot
Resource    ../Ressources/Keywords/Login_Logout_keywords.robot
Resource    ../Ressources/Keywords/Creer_Site_keywords.robot
Resource    ../Ressources/Keywords/Ajouter_Liste_Donnees_keywords.robot
Resource    ../Ressources/Keywords/Creer_Nouvelle_Liste_keywords.robot
Resource    ../Ressources/Keywords/Creer_Element_De_Liste_keywords.robot
Library    SeleniumLibrary
*** Variables ***
${vURL}    https://35.188.55.52/share/page/
${vBROWSER}    chrome
${vUser}    adminEquipe3
${VPassword}    123456789
${nomSite}    Site2TestEquipe3
${vNomListe}    AGENDA
${vNomElementListe}    test2



*** Test Cases ***
TC
    Login    ${vURL}    ${vBROWSER}    ${vUser}    ${VPassword}
    Creer un site    ${vNom_Site}        ${vDescription_Site}    
    Ajouter une liste de données    ${vNom_Site} 
    Creer_une_nouvelle_liste_de_donnee    ${vNomSite}    ${nomSite}     ${typeDeListeV}    ${Description}
    Creer un element de liste    ${vNom_Site}    ${Reference}
    Dupliquer plusieurs element    ${nomSite}    ${vNomListe}    ${vNomElementListe}