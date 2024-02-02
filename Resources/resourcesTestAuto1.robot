*** Settings ***
Library    SeleniumLibrary



*** Keywords ***
Start Browser and Maximize    
    Open Browser    https://www.thetestingworld.com/testings    chrome
    Maximize Browser Window


Close Browser Window
    ${Title}=    Get Title
    log     ${Title}
    Log To Console    ${Title}
    Close Browser
