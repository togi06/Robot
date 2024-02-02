*** Test Cases ***
Scenario: eating cucumbers
    [Template]  Scenario Outline: eating cucumbers

    # Examples:
    # start  eat  left
    12       5    7
    20       5    15
    33       11   22
    35       15   20


*** Keywords ***
Scenario Outline: eating cucumbers
    [Arguments]     ${start}    ${eat}    ${left}
    Given there are ${start} cucumbers
    When I eat ${eat} cucumbers
    Then I should have ${left} cucumbers


# steps implementation
there are ${x} cucumbers
    Set Test Variable    ${start}  ${x}
    log    ${start}

I eat ${y} cucumbers
    Set Test Variable  ${eat}  ${y}
    log    ${start}
    log    ${eat}
    
I should have ${z} cucumbers
    Set Test Variable  ${left}  ${z}
    log   ${start}
    log   ${eat}
    log   ${left}

    ${result}=  Evaluate  ${start} - ${eat}
    Should be equal as strings  ${result}  ${left}