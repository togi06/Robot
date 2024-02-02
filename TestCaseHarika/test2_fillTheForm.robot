
*** Settings ***
Library    SeleniumLibrary


*** Tasks ***
To login into application and to export results
    Login into Application
    Fill form one person
 

*** Keywords ***
Login into Application
    Open Browser    https://robotsparebinindustries.com/#/    chrome
    Maximize Browser Window
    Input Text    username    maria
    Input Password    password    thoushallnotpass
    Click Element    xpath://button[@type='submit']
    #Sleep    2
    Wait Until Element Contains    xpath://span[@class='username']    maria
    #sleep ile de yapilabilirdi ama ' wait until ...' ile yapmak her zaman daha mantikli
    #Click Button    logout 
    #Sleep    2
Fill form one person
    Input Text    firstname    Tolga
    Input Text    lastname    Bayter
    Select From List By Index    salestarget    2
    Sleep    1
    Select From List By Value    salestarget    10000
    Sleep    1
    #Select From List By Label    salestarget    $25,000
    Input Text    salesresult    48000
    #Sleep    577777
    Click Element    xpath://button[.='Submit']