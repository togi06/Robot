*** Settings ***
Documentation    scroll
Library    Browser


*** Variables ***
${URL}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login


*** Test Cases ***
Scroll
    [Documentation]    scroll
    New Browser    browser=chromium    headless=False    args=["--start-maximized"]
    New Context    viewport=${None}
    New Page    ${URL}
    Type Text    //input[@name="username"]    Admin
    Type Text   //input[@name="password"]    admin123
    Click     //button[.=" Login "]
    Sleep    2
    Scroll By    ${None}    300    0    smooth
    Sleep    2
    Scroll By    ${None}    -100    0    smooth
    Sleep    2
    # Scroll To Element    (//span[.='Unassigned'])[2]
    Scroll To    ${None}    bottom    left    auto
    Sleep    5
