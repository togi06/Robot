*** Settings ***
Library    SeleniumLibrary


Resource    ../Resources/login_resources.robot

*** Tasks ***
Open Webpage
    Open Website
    Add customer to CRM system


*** Keywords ***
Open Website
    Open Browser    https://www.rpa-unlimited.com/youtube/robocorp-tutorial/    chrome
    Maximize Browser Window

Add customer to CRM system
    Input Text    company-name    Toms Tech Academy
    Input Text    company-contact    Thomas
    Input Text    address    Johannstr.10
    Input Text    zipcode    52078
    Input Text    city    Aachen
    Input Text    country    Germany
    Input Text    telephone    821637642
    Input Text    email    hdaskhkd@hotmail.com 
    Sleep    2
    Submit Form
    Sleep    2