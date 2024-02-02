*** Settings ***
Library    Browser


*** Variables ***
${URL}    https://the-internet.herokuapp.com/login
${EXPECTED URL}    https://the-internet.herokuapp.com/secure


*** Test Cases ***
My first Test
    [Documentation]    first test
    # bu satiri test ettigim sayfa gorunur olsun diye yaziyorum  headless=False sayfayi acmaya yariyor "true" olsa acmaz
    New Browser    browser=chromium    # headless=False
    New Page   ${URL}
    Type Text    id=username    tomsmith
    Type Text    id=password    SuperSecretPassword!
    Click    //button[@type='submit']
    ${CURRENT URL}    Get Url
    Log To Console    ${CURRENT URL}
    Log     ${CURRENT URL}
    Should Be Equal    ${CURRENT URL}    ${EXPECTED URL}
    # assertion icin "should be Equal" kullaniliyor
