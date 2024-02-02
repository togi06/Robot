*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${LoginUrl}    https://eucon.rexx-hr.com/
${browser1}    chrome


*** Keywords ***
Open website
    Open Browser    ${LoginUrl}    ${browser1}
    Maximize Browser Window


Close website
    Close All Browsers

Go to Loginpage
    go to    ${LoginUrl}

Write Username    
    [Arguments]    ${username}
    Input Text    id:loginform_username    ${username}

Write Pass
    [Arguments]    ${password}
    Input Text    id:password    ${password}

Click login
    Click Element    id:submit

Error message should be displayed
    Page Should Contain    Die Anmeldung war nicht erfolgreich.
