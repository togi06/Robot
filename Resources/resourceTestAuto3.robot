*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
Start Browser
    Open Browser    https://www.thetestingworld.com/testings    chrome
    Maximize Browser Window


Close Browser
    ${title}=    Get Title
    Log To Console    ${title}
    log    ${title}
    Close Browser