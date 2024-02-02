*** Settings ***
Documentation    dropwdown
Library    Browser
Resource    ../Resources/seniorQAresources.robot
Test Setup    OpenBrowser Demo Page DropDown


*** Test Cases ***
SelectOptions Test
    [Documentation]    Dropdown
    ${ALL OPTIONS}=    Get Select Options    id=products-orderby
    Log    ${ALL OPTIONS}
    Log To Console    ${ALL OPTIONS}
    #                                     value label index
    Select Options By    id=products-orderby    value    15
    Select Options By    id=products-orderby    index    2
    ${SELECTED_OPTION}=   Get Selected Options    id=products-orderby
    Log    ${SELECTED_OPTION}
    Log To Console    ${SELECTED_OPTION}
    # Sleep    500
    # Deselect Options    id=products-orderby
