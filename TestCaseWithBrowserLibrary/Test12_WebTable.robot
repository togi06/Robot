*** Settings ***
Documentation    Web table
Library    Browser
Resource    ../Resources/seniorQAresources.robot
Test Setup    Open Webtable


*** Variables ***
${SELECTOR}    xpath=//*[@id="tablepress-demo"]

*** Test Cases ***
WebTable
    [Documentation]    web table
    ${number_of_rows}=    Get Element Count    xpath=//*[@id=tablepress-demo]/tbody/tr
    Log    ${number_of_rows}
    Log To Console    ${number_of_rows}

    FOR  ${INDEX}  IN RANGE  2    ${number_of_rows+2}
        ${CellValue}=    Get Table Cell Element    ${SELECTOR}    1    ${INDEX}
        ${Value}=    Get Text    ${CellValue}
        Log To Console    ${Value}
    END

    ${colidx}=    Get Table Cell Index    ${SELECTOR} >> "Barry"
    Log To Console    ${colidx}

    ${rowidx}=    Get Table Row Index    ${SELECTOR} >> "Barry"
    Log To Console    ${rowidx}

    ${newValue}=    Get Table Cell Element    xpath=//*[@id="tablepress-demo"]    ${colidx}    ${rowidx}
    ${name}=    Get Text    ${newValue}
    Should Be Equal    ${name}    Barry
