*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Login Url}    https://admin-demo.nopcommerce.com/
${browser}    chrome


*** Keywords ***
Open My Browser    
    Open Browser    ${Login Url}    ${browser}
    Clear Element Text    id:Email
    Clear Element Text    id:Password
    Sleep    5
    Maximize Browser Window


Close Browsers
    Close All Browsers


Open Loginpage  #bunu istersen kullanmak zorunda degilsin 
    Go To    ${Login Url}


Input Username
    [Arguments]    ${username}
    Input Text    id:Email    ${username}

Input Pwd
    [Arguments]    ${password}
    Input Text    id:Password    ${password}
 

Click Login Button
    Click Element    xpath://button[@type="submit"]

Click logout link
    Click Link    Logout

Error message should be visible
    Page Should Contain    Login was unsuccessful

Dashboard page should be visible
    Page Should Contain    Dashboard
