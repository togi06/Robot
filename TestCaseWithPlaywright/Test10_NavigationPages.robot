*** Settings ***
Documentation    navigate the page
Library    Browser
Resource    ../Resources/seniorQAresources.robot
Test Setup    OpenBrowser


*** Test Cases ***
Navigation
    [Documentation]    navigate pages
    Click    li > .ico-register
    Go Back
    Go Forward
