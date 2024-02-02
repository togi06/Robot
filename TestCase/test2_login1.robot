*** Settings ***
Documentation        A simple web scraper robot.
...                     Opens a website
...                 Stores the web page text in a file in the output directory
...                  Saves a screenshot of an element in the output    directory

#Library                 RPA.Browser.Selenium         auto_close=${False}
Library        SeleniumLibrary    #auto_close=${False}

*** Tasks ***
Loging into Application
    Open Browser    http://robotsparebinindustries.com/#/    chrome
    Input Text    username    maria 
    Input Password    password    thoushallnotpass
    Click Button     xpath://button[.="Log in"]
    #Sleep    2
    Wait Until Element Contains    xpath://span[contains(text(),'maria')]    maria
    Click Button    logout
    # Sleep    500
