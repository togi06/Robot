*** Settings ***
Documentation    Open webspage and login with valid User and Pass

Library    SeleniumLibrary



*** Variables ***

${BROWSER}    chrome
${URL}    http://demo.nopcommerce.com/

*** Test Cases ***
Login Webpage
    [Documentation]    login with valid user&pass
    Open Browser    http://robotsparebinindustries.com/#/    chrome
    Maximize Browser Window
    Input Text    id:username    maria
    Input Text    password    thoushallnotpass
    Click Element    //button[@type='submit']
    ${TITLE}=    Get Title
    Log To Console    Title is ${TITLE}
    Title Should Be    RobotSpareBin Industries Inc. - Intranet
    Close Browser

Login Test
    [Documentation]    login with valid user&pass
    Login to App

*** Keywords ***
Login to App
    Open Browser    ${URL}    ${BROWSER}
    Click Link    xpath://a[.='Log in']
    Input Text    id:Email    pavanoltraining@gmail.com
    Input Text    id:Password    Test@123
    Sleep    1
    Click Element    //button[.='Log in']
    Close Browser

