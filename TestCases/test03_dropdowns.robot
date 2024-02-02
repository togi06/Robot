*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    chrome
${URL}    https://practice.cydeo.com/dropdown

*** Test Cases ***
Testing Dropdown
    [Documentation]    testing of dropdowns
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    # Set Selenium Speed    1
    Select From List By Label    dropdown    Option 2
    Select From List By Label    dropdown    Option 1
    Select From List By Index    dropdown    2
    Select From List By Index    dropdown    1
    Select From List By Value    year    1990
    Select From List By Index    month    1
    Select From List By Value    day    1
    Select From List By Index    state    6
    Select From List By Value    Languages    python
    ${TITLE}=    Get Title
    Log To Console    Title is ${TITLE}
    Close Browser