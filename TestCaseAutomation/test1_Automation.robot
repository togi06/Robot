*** Settings ***
Documentation    Automation Testing of an Online Pizza Shop; 
...    To order Pizza's from an oline pizza store 
...    While doing so, pizza size, flavor, suace and topping are chosen 
...    Further Success massage is verified and logged in report

Library    SeleniumLibrary
#Test Teardown    Close Browser

*** Variables ***
${text}                                                Pizza added to the cart!
*** Test Cases ***
#Business Test Cases
#Oder 5 Pizza's Online
    
Child Test Cases
    open Website
    #Set Selenium Speed    1
    Login
    Order Pizza
    Verify message 
      


*** Keywords ***
open Website
    Open Browser    https://dineshvelhal.github.io/testautomation-playground/login.html    chrome
    Maximize Browser Window

Login 
    Input Text    id:user    admin
    Input Text    id:password    admin
    Click Element    id:login
  

Order Pizza
    Select Radio Button    size    MEDIUM
    Select From List By Index    id:select_flavor    2    
    Select Radio Button    sauce    BARBEQUE
    Select Checkbox    id:onions
    Select Checkbox    id:green_olive
    Input Text    id:quantity    3
    Click Button    id:submit_button

Verify message  
    ${message}=    Get Text    id:added_message
    Log To Console     ${message}
    Log     ${message}
    # Element Text Should Be    id:added_message    ${text}
    # Element Text Should Be    id:added_message    Pizza added to the cart!
    Sleep    5