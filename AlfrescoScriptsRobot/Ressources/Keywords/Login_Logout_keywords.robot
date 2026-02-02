*** Settings ***
Library    SeleniumLibrary
Variables    ../Locators/Locators.py

*** Keywords ***

Login
    [Arguments]    ${url}    ${browser}    ${user}    ${password}
    Open Browser    ${url}    ${browser}
    Sleep    3s
    Maximize Browser Window
    Input Text    ${input_Username}    ${user}
    Input Text    ${input_Password}    ${password}
    Click Element   ${btn_Submit}
    Sleep    3s
    #Element Text Should Be    ${tchek_user}    ${user}
  
    Title Should Be    Alfresco » Tableau de bord utilisateur
Logout
    Click Element    ${link_header_user_menu_popup}
    Click Element    ${link_deconexcion}
    Close Browser