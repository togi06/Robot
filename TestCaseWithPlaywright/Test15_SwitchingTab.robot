*** Settings ***
Documentation    switching Tab
Library    Browser


*** Variables ***
${URL}    http://demo.automationtesting.in/Windows.html
${EXPECTED URL}    https://www.selenium.dev/
${BUTTON}    //button[.='    click   ']


*** Test Cases ***
Switching
    [Documentation]    Switching Tab
    New Browser    browser=chromium    headless=False    args=["--start-maximized"]
    New Context    viewport=${None}
    New Page    ${URL}
    Click    //p[.='Do not consent']
    Click    //a[@href='http://www.selenium.dev']//button[@class='btn btn-info'][normalize-space()='click']
    Sleep    2
    ${current_page}    Get Page Ids    ACTIVE    ACTIVE    ACTIVE
    Log    Current pade ID is:    ${current_page}
    Log To Console    ${current_page}
    @{all_pages}    Get Page Ids    ALL    ALL    ALL
    Log Many    New Page ID is:    ${all_pages}[0]
    Log To Console    ${all_pages}[0]
    Sleep    2
    ${PREVIOUS PAGE}    Switch Page    ${all_pages}
    ${CURRENT URL}    Get Url
    Sleep    2
    Should Be Equal    ${CURRENT URL}    ${EXPECTED URL}
    Switch Page    ${PREVIOUS PAGE}
    ${CURRENT URL}    Get Url
    Sleep    2
    Should Be Equal    ${CURRENT URL}    ${EXPECTED URL}

Switching2
    [Documentation]    Switching Tab
    New Browser    browser=chromium    headless=False    args=["--start-maximized"]
    New Context    viewport=${None}
    New Page    ${URL}
    Click    //p[.='Do not consent']
    Sleep    1
    Click    //a[@href='http://www.selenium.dev']//button[@class='btn btn-info'][normalize-space()='click']
    Sleep    1
    ${current}    Get Page Ids    ACTIVE    ACTIVE    ACTIVE
    Log    Current page ID is: ${current}
    @{all}    Get Page Ids    ALL    ALL    ALL
    Log Many    New Page Id is:    ${all}[0]
    ${previous}    	Switch Page    ${all}[0]
    ${current Url}    Get Url
    Sleep    1
    Should Be Equal    ${current Url}    ${EXPECTED URL}
    Switch Page    ${previous}
    ${current Url1}    Get Url
    Log To Console    ${current Url1}
    Sleep    1
    # Should Be Equal    ${current Url1}    ${URL}
