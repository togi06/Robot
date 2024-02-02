*** Settings ***
Documentation    Basic example Input text by search and click funtions
Library    Browser


*** Variables ***
${URL}    http:marketsquare.github.io/robotframework-browser/Browser.html
${SEARCH_FIELD}    //input[@placeholder='Search']
${CLICK_BROWSER_KEYWORD}    (//a[.='Connect To Browser'])[1]


*** Test Cases ***
Open Browser Page
    [Documentation]    Basic example Input text by search and click funtions
    Open Webpage
    Search Keyword
    Click Keyword


*** Keywords ***
Open Webpage
    [Documentation]    Basic example Input text by search and click funtions
    Open Browser   ${URL}
    # New Context    viewport=${None}

Search Keyword
    [Documentation]    Basic example Input text by search and click funtions
    # (Input Text yerine 'Fill Text')
    Fill Text    ${SEARCH_FIELD}    Download

Click Keyword
    [Documentation]    Basic example Input text by search and click funtions
    # Click Element yyerine sadece 'Click'
    Click    ${CLICK_BROWSER_KEYWORD}
