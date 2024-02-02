*** Settings ***
Documentation    creatin Variables and how to use : "scalar", "List", "Dictionary"


*** Variables ***
${SCALAR}    this is scalar variable
@{LIST}    one    two    three    four    five
&{DICTIONARY}    first=one    second=two    third=three    fourth=four    fifth=five

*** Test Cases ***
Exewcute Scalar Variable
    [Documentation]    execute scalar
    Log To Console    ${SCALAR}

Execute List Variable
    [Documentation]    list
    Log To Console    ${LIST}
    Log To Console    ${LIST}[3]
    Log To Console    \nI picked ${LIST}[3] value

Execute list
    [Documentation]    execute all list
    FOR  ${LIST}  IN  @{LIST}
        Log To Console    \nI picked ${LIST}
    END

Execute Dictionary
    [Documentation]    execute dic.
    Log To Console    ${DICTIONARY['fifth']}

Execute Dic
    [Documentation]    execute dic
    FOR  ${key}  IN  @{DICTIONARY.keys()}
        Log To Console    ${DICTIONARY["${key}"]}
    END
    