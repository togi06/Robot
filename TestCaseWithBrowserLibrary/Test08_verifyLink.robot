*** Settings ***
Documentation    verify Lik
Library    Browser
Resource    ../Resources/seniorQAresources.robot
Test Setup    OpenBrowser


*** Test Cases ***
Verify
    [Documentation]    verify the link
    ${Element}=    Get Element    li > .ico-register
    Log    ${Element}
    ${LINK}=    Get Property    ${Element}    href
    &{RES}    Http    ${LINK}
    Log To Console    ${Element}
    Log To Console    ${LINK}
    Should Be Equal    ${RES.status}    ${200}

Multi Verfy
    [Documentation]    multi verify
    @{ELEMENTS}=    Get Elements    css=a
    FOR  ${element}  IN  ${ELEMENTS}
        ${Link}=    Get Property    ${element}    href
        &{res}    Http    ${link}
        Should Be Equal    ${res.status}    ${200}
    END
