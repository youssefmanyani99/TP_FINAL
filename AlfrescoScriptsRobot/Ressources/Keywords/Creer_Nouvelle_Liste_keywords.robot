*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary
Variables    ../../Ressources/Locators/Locators.py

*** Variables ***
${vURL}    http://35.188.55.52/share/page/
${SEL_TIMEOUT}    3s
${vNom_Site}      AtikaSite10
${typeDeListeV}    1
${vNomListe}    Agenda
${Description}    Test4


*** Keywords ***
Creer_une_nouvelle_liste_de_donnee

# Utiliser les index de 1 à 9 pour choisir un élément dans la liste :
# 1  = Agenda d'événement           
# 2  = Carnet d'adresses            
# 3  = Liste d'événements            
# 4  = Liste de contacts             
# 5  = Liste de publications         
# 6  =  Liste de tâches               
# 7  =  Liste de tâches (avancées)    
# 8  = Liste de tâches (simples)     
# 9  = Ordre du jour                 

    [Arguments]    ${vNom_Site}     ${vNomListe}    ${typeDeListeV}    ${Description}

    # Attendre que le menu "Sites" soit visible, puis cliquer dessus
    Wait Until Element Is Visible    ${menu_Sites}
    Click Element    ${menu_Sites}
    Wait Until Element Is Visible    ${NomSite1}${vNom_Site}${NomSite2}
    Click Element    ${NomSite1}${vNom_Site}${NomSite2}
    Wait Until Element Is Visible    ${lnk_Liste_Donnee}
    Click Element    ${lnk_Liste_Donnee}
    
    # Cliquer sur "Nouvelle liste"
    Wait Until Element Is Visible    ${btn_Nouvelle_liste}
    Click Element    ${btn_Nouvelle_liste}

    # Attente pour assurer le chargement complet du formulaire
    Sleep    2
    Wait Until Element Is Visible    //a[text()="${typeDeListeV}"]
    Click Element    //a[text()="${typeDeListeV}"]

    # Remplir le champ "Titre" avec le nom de la liste
    Input Text    ${input_Titre}    ${vNomListe}

    # Remplir le champ "Description"
    Input Text    ${input_Description}    ${Description}

    # Sauvegarder la nouvelle liste
    Wait Until Element Is Visible    ${btn_Enregistrer}
    Click Element    ${btn_Enregistrer}