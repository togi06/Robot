*** Settings ***
Documentation    Mouse
Library    Browser
Resource    ../Resources/seniorQAresources.robot
Test Setup    OpenBrowser


*** Test Cases ***
Mouse
    [Documentation]    mouse Hover
    Hover    //ul[@class='top-menu notmobile']//a[normalize-space()='Computers']
    Sleep    1
    Hover    //ul[@class='top-menu notmobile']//a[normalize-space()='Apparel']
    Sleep    1
    Click With Options    //ul[@class='top-menu notmobile']//a[normalize-space()='Gift Cards']
