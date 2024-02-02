*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/login2_resources.robot

*** Variables ***
${browser}    chrome
${Url}    https://www.thetestingworld.com/testing



*** Test Cases ***
TC_001 Browser Star and Close
   Open Browser     ${Url}    ${browser}
   Maximize Browser Window

Robot First Test Case
    Open Browser    ${Url}    ${browser}
    Maximize Browser Window
    Click Link    xpath://a[.='Quick Demo']
    Input Text    id:wdform_1_element_first2    Tolga
    Input Text    id:wdform_1_element_last2    Bayter
    Input Text    id:wdform_2_element2    tolga@gmail.com
    Input Text    id:wdform_4_element2    987132981
    Input Text    id:wdform_10_element2    2023-10-12
    Select From List By Index    id:wdform_5_element2    5
    Click Button    xpath://button[@class='button-submit']
    Element Text Should Be    xpath://li[.='Your form was successfully submitted.']    Your form was successfully submitted.
    ${Text}=    Get Text    xpath://li[.='Your form was successfully submitted.']
    log    ${Text}
    Log To Console    ${Text}