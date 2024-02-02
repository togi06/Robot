*** Settings ***
Library    Browser


*** Test Cases ***
Locator
    [Documentation]    locator
    New Browser    browser=chromium    headless=False
    New Page    https://demo.nopcommerce.com/
    # Click    //a[.='Register']
    # Click    text="Register"
    # Click    "Register"
    # Click    css=li > a.ico-register
    Click    li > a.ico-register
    # li is parent and a is the child of with class
    # Type Text    id=FirstName    Tolga
    # Type Text    css=div > input#FirstName    Tolga
    Type Text    css=div >> id=FirstName    Tolga
    # Type Text    //*[@id="LastName"]    Bayter
    Type Text    xpath=//*[@id="LastName"]    Bayter
    Sleep    2
