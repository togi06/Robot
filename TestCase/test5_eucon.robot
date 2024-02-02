*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://oauth-dev.eucon-devservices.com/login
${"email_txt"}      id:inputUsername
${"email2_txt"}    tolga.bayter@eucon.com
${"password_txt"}    id:inputPassword
${"login"}    xpath://button[.="LOGIN"]
${"password2_txt"}    B({A?pw96



*** Test Cases ***
TestingInputBox
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    LoginMail
    #Sleep    5000000
    #Close Browser
    



*** Keywords ***
LoginMail
    Title Should Be    Einloggen - Eucon Services
    
     Input Text    ${"email_txt"}    ${"email2_txt"}
     Input Text    ${"password_txt"}    ${"password2_txt"}
     Click Element    ${"login"}
     