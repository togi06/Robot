
*** Settings ***
Library    SeleniumLibrary 

 


*** Tasks ***
Login into Application
    Open Browser    https://robotsparebinindustries.com/#/    chrome
    Maximize Browser Window
    Input Text    username    maria
    Input Password    password    thoushallnotpass
    Click Element    xpath://button[@type='submit']
    #Sleep    2
    Wait Until Element Contains    xpath://span[@class='username']    maria
    #sleep ile de yapilabilirdi ama ' wait until ...' ile yapmak her zaman daha mantikli
    Click Button    logout 
    #Sleep    2

