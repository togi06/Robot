*** Settings ***
Documentation    Template robot main suite.
Library    SeleniumLibrary


*** Variables ***



*** Tasks ***
Select from Dropdowns
    Open Browser    https://www.rpa-unlimited.com/youtube/RPA-practice-forms/    chrome
    Maximize Browser Window
    Select From List By Label    company    Royal Dutch Oyster
    Sleep    1
    Select From List By Index    company    0
    Sleep    1
    Select From List By Value    company    Royal Dutch Bank
    Sleep    5
