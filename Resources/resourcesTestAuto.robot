*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
Start Browser
    [Arguments]    ${UserUrl}    ${InputBrowser}
    Open Browser    ${UserUrl}     ${InputBrowser}
    Maximize Browser Window
    ${Title}=    Get Title
    [Return]    ${Title}
    Log    ${Title}
    Log To Console    ${Title}