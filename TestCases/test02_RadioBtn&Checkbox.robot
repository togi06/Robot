*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    chrome
${URL}    https://practice.cydeo.com/radio_buttons
${URL2}    https://practice.cydeo.com/checkboxes

*** Test Cases ***
Radio button & checkbox
    [Documentation]    testing of Radio button & check boxes
    Radio Button
    CheckBox

*** Keywords ***
Radio Button 
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    # Set Selenium Speed    1
    # select radio button yazdıktan sonra önce 'name' sonra da 'value' yu yazıyoruz
    Select Radio Button    color    black
    Select Radio Button    color    red
    Select Radio Button    color    yellow
    Select Radio Button    color    blue
    Select Radio Button    sport    basketball
    Select Radio Button    sport    football
    Select Radio Button    sport    hockey
    ${TITLE}=    Get Title
    Log To Console    Title is ${TITLE}
    Close Browser
CheckBox
    Open Browser    ${URL2}    ${BROWSER}
    Maximize Browser Window
    # select Checkbox 'tan sonra herhangi bir locator ı yazmam yetizor
    Select Checkbox    box1
    Unselect Checkbox    box2
    ${TITLE}=    Get Title
    Log To Console    Title is ${TITLE}
    Close Browser
