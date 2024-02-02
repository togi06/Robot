*** Settings ***
Library    SeleniumLibrary
Library    XML

*** Variables ***
${browser}    chrome
${url}    http://demo.nopcommerce.com/

*** Test Cases ***
LoginTest
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    loginToApplication
    Close Browser
   # Sleep    5

*** Keywords ***
loginToApplication
    Click Link    xpath://a[.="Log in"]
    Input Text    id=Email    pavanoltraining@gmail.com
    Input Text    id=Password    Test@123
   # Sleep    1
    Click Element    xpath://button[.='Log in']
