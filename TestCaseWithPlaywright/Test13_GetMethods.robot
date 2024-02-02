*** Settings ***
Documentation    Get methods
Library    Browser
Resource    ../Resources/seniorQAresources.robot
Test Setup    Open Frame Page


*** Variables ***
${expected text}    Frames
${selector}    //*[@id="app"]/div/div/div[1]/div


*** Test Cases ***
Get Attributes Test
    [Documentation]    Get methods
    ${attr_name}    Get Attribute Names    ${selector}
    Log    ${attr_name}
    Log To Console    ${attr_name}

GetAttr Test
    [Documentation]    get methods
    ${attr}    Get Attribute    ${selector}    class
    Log    ${attr}
    Log To Console    ${attr}

Get Text 
    [Documentation]    get Methods
    ${text}    Get Text    xpath=//div[@class='main-header']
    Log To Console    ${text}
    Should Be Equal    ${text}    ${expected text}
