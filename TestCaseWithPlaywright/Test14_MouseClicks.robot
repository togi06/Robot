*** Settings ***
Documentation    Mouse Clicks
Library    Browser
Resource    ../Resources/seniorQAresources.robot
Test Setup    OpenRegister

*** Test Cases ***
Clicks
    [Documentation]    Mouse Clicks
    Click With Options   //h1[normalize-space()='Register']    clickCount=2        # double clicks
    Sleep    3
    Click With Options    //h1[normalize-space()='Register']    button=right    # right click
    Sleep    3
    