*** Settings ***
Documentation    Input
Library    Browser


*** Test Cases ***
Input Text
    [Documentation]    Input Text
    Open

*** Keywords ***
Open
    [Documentation]    Input Text
    New Browser    browser=chromium    headless=False    args=["--start-maximized"]
    New Context    viewport=${None}
    New Page    https://de-de.facebook.com/
    
    # New Browser    chromium    headless=No
    # Open Browser   https://de-de.facebook.com/
    Click    //button[.="Alle Cookies erlauben"]
    Fill Text    //input[@id="email"]    tolga@gmaäl.xom
    Sleep    1
    Clear Text    //input[@id="email"]
    Sleep    1
    Fill Text    //input[@id="email"]    tolga
    Fill Text    //input[@id="pass"]    tolga@gmaäl.xom
    # Sleep    400