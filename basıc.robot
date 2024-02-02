*** Settings ***
Library    SeleniumLibrary



*** Test Cases ***
Open
    Open Browser    https://www.python.org/downloads/windows/    chrome
    Maximize Browser Window
    ${Title}=    Get Title
    Log To Console   ${Title} 

    Close Browser





