*** Settings ***
Documentation    Link
Library    SeleniumLibrary


*** Variables ***
${URL}    https://de-de.facebook.com/
${BROWSER}    chrome




*** Test Cases ***
LinkClick
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window  
    Click Element    xpath:(//button[@value='1'])[3]
    Click Link    xpath://a[.='Passwort vergessen?']