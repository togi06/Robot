*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${var1}    https://robotframework.org/
${var2}    https://google.com
${browser}    chrome


*** Test Cases ***
TC_001
    Open Browser    ${var1}    ${browser}    
    Maximize Browser Window
    Click Element    xpath://a[.='WASM Python']
   # Sleep    3
    #Switch Window    title=Robot Framework
   # ${url2}=    Get Title
   # ${url}=    Get Location
   # Log To Console     ${url}
    #Log To Console     ${url2}
    
    # boyle olunca daha dinamik oluyor
    @{list}    Get Window Handles
        FOR    ${vin}    IN    @{LIST}
            Switch Window    ${vin}
            ${url}=    Get Location
            Log To Console   ${url}
            
        END

    Close Browser
    #Sleep    50
