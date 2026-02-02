#Page login
input_Username="//input[@id='page_x002e_components_x002e_slingshot-login_x0023_default-username']"
input_Password="//input[@id='page_x002e_components_x002e_slingshot-login_x0023_default-password']"
btn_Submit="//button[contains(text(), 'Connexion')]"
tchek_user="//span[@id='HEADER_USER_MENU_POPUP_text']"

#Page logout

link_header_user_menu_popup="//div[@id='HEADER_USER_MENU_POPUP']"
link_deconexcion="//td[@id='HEADER_USER_MENU_LOGOUT_text']"

#Dupliquer des éléments 

Link_Site= "//span[@id='HEADER_SITES_MENU_text']"
Liste_Donnees= "//div[@id='HEADER_SITE_DATA-LISTS']"
NomSite1="//a[text()='"
NomSite2="']"
NomElement1="//div[text()='"
NomElement2="']/../preceding-sibling::td//input"
ElementList_btn="//span[@id='template_x002e_toolbar_x002e_data-lists_x0023_default-selectedItems-button']"
Dupliquer_btn="//span[@class='onActionDuplicate']"


#Creer un site

#Page Création d'un site
MENU_SITES="//span[@id='HEADER_SITES_MENU_text']"
ITEM_CREER_SITE="//td[@id='HEADER_SITES_MENU_CREATE_SITE_text']"
FIELD_NOM_SITE="//input[@name='title']"
FIELD_URL_SITE="//input[@name='shortName' and @type='text']"
FIELD_DESC_SITE="//textarea[@name='description']"
RADIO_PUBLIC="//input[@id='CREATE_SITE_FIELD_VISIBILITY_CONTROL_OPTION0_BUTTON']"
RADIO_MODERE="//input[@id='CREATE_SITE_FIELD_VISIBILITY_CONTROL_OPTION1_BUTTON']"
RADIO_PRIVE="//input[CREATE_SITE_FIELD_VISIBILITY_CONTROL_OPTION2_BUTTON']"
BTN_CREER_SITE="//span[@id='CREATE_SITE_DIALOG_OK_label'and text()='Créer']"

#Creer une nouvelle liste de données
menu_Sites= "//div[@id='HEADER_SITES_MENU']"

lnk_Liste_Donnee="//div[@id='HEADER_SITE_DATA-LISTS']"

btn_Nouvelle_liste="//button[contains(@id,'newListButton')]"

input_Titre="//input[@name='prop_cm_title']"

input_Description="//textarea[@name='prop_cm_description']"

btn_Enregistrer="//button[contains(@id,'submit')]"

#Ajouter la liste des données

Roue_Donte= "//div[@id='HEADER_SITE_CONFIGURATION_DROPDOWN']"
Link_Personnaliser= "//tr[@id='HEADER_CUSTOMIZE_SITE_text']/a"
link_Liste_Donnee="//h3[text()='Listes de données']/ancestor::li"
Page_actuel="//*[@id='template_x002e_customise-pages_x002e_customise-site_x0023_default-currentPages-ul']"
btn_OK_List="//button[contains(.,'OK')]"

#Creer un élément de liste
Agende_Link="//*[@id='template_x002e_datalists_x002e_data-lists_x0023_default-lists']/ul/li/a"
Nouveau_Element_Link="//*[@id='template_x002e_toolbar_x002e_data-lists_x0023_default-newRowButton-button']"
Reference_txt="//*[@id='template_x002e_toolbar_x002e_data-lists_x0023_default-createRow_prop_dl_eventAgendaRef']"
btn_Enregistrer_element="//*[@id='template_x002e_toolbar_x002e_data-lists_x0023_default-createRow-form-submit-button']"



#Déplacer des dashelets 
Dashboard_Personolize= "//*[@id='HEADER_CUSTOMIZE_SITE_DASHBOARD_text']/a"
BTN_OK="//button[contains(.,'OK')]"
DASHLET_SOURCE="//div[@class='dnd-draggable' and contains(@title, 'Membres du site')]"
DASHLET_TARGET="//*[@id='template_x002e_customise-dashlets_x002e_customise-site-dashboard_x0023_default-column-ul-2']"

#Ajouter Blog

link_Blog= "//h3[text()='Blog']/ancestor::li"

# créer un article 

Btn_Enregitrer_Brl= "//*[@id='template_x002e_postedit_x002e_blog-postedit_x0023_default-save-button']"
Link_Blog="//*[@id='HEADER_SITE_BLOG-POSTLIST']"
Link_New_Article= "//*[@id='template_x002e_toolbar_x002e_blog-postlist_x0023_default-create-button']"
Article_Title="//*[@id='template_x002e_postedit_x002e_blog-postedit_x0023_default-title']"


# Supprimer un Article_Title
BTN_Delete= "//span[(text())='Supprimer']"
BTN_Confirm= "//button[normalize-space(text())='Supprimer']"
