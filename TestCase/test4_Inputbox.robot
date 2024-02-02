*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    http://demo.nopcommerce.com
${"email_txt"}      id:Email
${"email2_txt"}    JohnDavid@gmail.com


*** Test Cases ***
TestingInputBox
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    LoginMail
    Sleep    2
    Close Browser
    



*** Keywords ***
LoginMail
    ${Title}=    Get Title
    Log To Console    ${Title}
    Title Should Be    nopCommerce demo store
    Click Element    xpath://a[.='Log in']
   # ${"email_txt"}    Set Variable    id:Email

    Element Should Be Visible    ${"email_txt"}
    Element Should Be Enabled    ${"email_txt"}

     #Input Text    ${"email_txt"}    JohnDavid@gmail.com
     Input Text    ${"email_txt"}    ${"email2_txt"}
     Sleep    1
     Clear Element Text    ${"email_txt"}


