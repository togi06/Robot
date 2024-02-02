*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${LoginUrl}    https://admin-demo.nopcommerce.com/
${browser}    chrome
#${username}    admin@yourstore.com
#${password}    admin

*** Keywords ***
Open my Browser
    Open Browser    ${LoginUrl}  ${browser} 
    Clear Element Text    id:Email
    Clear Element Text    id:Password
    Maximize Browser Window

Close Multiple Browser
   # Close All Browsers
    Close Browser    

Open Login Page
    go to  ${LoginUrl}

Input Username
    [Arguments]    ${username}
    Input Text    id:Email    ${username}

Input Pass
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


