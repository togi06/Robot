*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${browser}    chrome
${Url}    https://www.thetestingworld.com/testing

*** Test Cases ***
Robot Test Case
    Open Browser    ${Url}    ${browser}
    Maximize Browser Window
    Click Link    xpath://a[.='Quick Demo']
    Enter Firstname Familyname Email    Kartal    Kerem    KKB@gmail.com
    


*** Keywords ***
Enter Firstname Familyname Email
    [Arguments]    ${firstname}    ${familyname}    ${emalil}
    Input Text    id:wdform_1_element_first2    ${firstname}
    Input Text    id:wdform_1_element_last2    ${familyname}
    Input Text    id:wdform_2_element2    ${emalil}