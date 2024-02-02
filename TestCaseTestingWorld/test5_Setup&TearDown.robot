*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/resourcesTestAuto1.robot
Test Setup    Start Browser and Maximize
Test Teardown    	Close Browser Window



*** Variables ***



*** Test Cases ***
Register
    
    Input Text    name:fld_username    Tolga Bayter
    Input Text    name:fld_email    tolga@gmail.com    
    Input Text    name:fld_password    1235172356    

Robot Next Test Cases
    
    Select Radio Button    add_type    home
    Select Radio Button    add_type    office
    

    
    
