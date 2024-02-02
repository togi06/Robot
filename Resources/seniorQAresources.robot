*** Settings ***
Documentation    Demo Page
Library    Browser


*** Keywords ***
OpenBrowser Demo Page DropDown
    [Documentation]    Demo page Dropdown
    New Browser    browser=chromium    headless=False    args=["--start-maximized"]
    New Context    viewport=${None}
    New Page    https://demo.nopcommerce.com/digital-downloads


OpenBrowser
    [Documentation]    Demo page
    New Browser    browser=chromium    headless=False    args=["--start-maximized"]
    New Context    viewport=${None}
    New Page    https://demo.nopcommerce.com/

OpenRegister
    [Documentation]    Excel
    New Browser    browser=chromium    headless=False    args=["--start-maximized"]
    New Context    viewport=${None}
    New Page    https://demo.nopcommerce.com/register?returnUrl=%2F

Open Webtable
    [Documentation]    Web table
    New Browser    browser=chromium    headless=False    args=["--start-maximized"]
    New Context    viewport=${None}
    New Page    https://tablepress.org/demo/

Open Frame Page
    [Documentation]    Get methods
    New Browser    browser=chromium    headless=False    args=["--start-maximized"]
    New Context    viewport=${None}
    New Page    https://demoqa.com/frames

Open Türkish Airlines
    [Documentation]    data picker
    New Browser    browser=chromium    headless=False    args=["--start-maximized"]
    New Context    viewport=${None}
    New Page    https://www.turkishairlines.com/en-int/index.html
    Click    //button[@id='cookieWarningAcceptId']

Calculate Month Difference
    [Arguments]    ${desired_month_year}    ${current_month_year}
    ${current_month}    Evaluate    datetime.datetime.strptime('${current_month_year}', '%B %Y').month    # take only number of month
    ${current_year}    Evaluate    datetime.datetime.strptime('${current_month_year}', '%B %Y').year    #  take only number of year
    ${desired_month}    Evaluate    datetime.datetime.strptime('${desired_month_year}', '%B %Y').month
    ${desired_year}    Evaluate    datetime.datetime.strptime('${desired_month_year}', '%B %Y').year
    ${months_differences}    Evaluate    (${desired_year} - ${current_year}) * 12 + (${desired_month} - ${current_month})
                                    # (2024- 2023) *12+ (8-10) = 1 *12 - 2= 10
                                    # This diffrent will be equal to the clicks to go from to current to desired month year
    Return    ${months_differences}

