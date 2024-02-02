#burada tum aksiyonlari yaziyorum sonrasinda da buranin konumunu kullanacagim sinifa "Resources" olarak giriyorum
*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
LaunchBrowser
#eger sadece buraya aksiyonlari yazarsak "Keyword without Arguments"

#Ama buraza "Arguments" i eklersek ve sonrasinda ekledigimiy Argumentlari ${app---} ile yazarsak 
# ve Test Case"de de Keyword"un yanina ilk hallerini yazarsak o zamanda "Keyword with Arguments"

    [Arguments]    ${appurl}    ${appbrowser}    
    Open Browser    ${appurl}    ${appbrowser}
    Maximize Browser Window
    ${title}=    Get Title
    [Return]    ${title}