*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/Locators.py        #bu sekilde PageObjet teki variableri cagiriyorum 


*** Keywords ***
Open my Browser
    [Arguments]    ${SiteUrl}    ${Browser}
    Open Browser    ${SiteUrl}    ${Browser}
    Maximize Browser Window
    


Enter Username
    [Arguments]    ${username}    #${txt_LoginUserName}  
    Input Text    ${txt_LoginUserName}    ${username}

Enter Password
    [Arguments]    ${password}    #${txt_loginPassword}
    Input Text    ${txt_loginPassword}    ${password}

Click SignIn
   Click Button    ${btn_signIn}

Verify Succesfull Login
    Title Should Be    Login: Mercury Tours

close my Browser
    Close All Browsers