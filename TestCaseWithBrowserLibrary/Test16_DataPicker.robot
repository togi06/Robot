*** Settings ***
Documentation    data pick up
Library    Browser
Resource    ../Resources/seniorQAresources.robot
Test Setup    Open Türkish Airlines


*** Variables ***
${T_DAY}    15
${M_Y}    August 2024


*** Test Cases ***
OneWayDAtePicker
    [Documentation]    one way data pick
    Click    id=one-way
    Click    xpath=(//div[@class="datepicker"])[1]

    # Get the first month available (Current Month)
    # ${CURRENT_MONTH_YEAR}    Get Text    //*[@id="flight-tab-pane"]/div/div[4]/div/div/div/div[2]
    # /div[1]/div/div[2]/div[1]/div[1]/div
    ${CURRENT_MONTH_YEAR}    Get Text    (//div[.='November 2023'])[2]
    Log To Console    ${CURRENT_MONTH_YEAR}

    # if trip month year matches with current month year

    IF    $M_Y == $CURRENT_MONTH_YEAR
        Matchlogic    1
    ELSE
        # Calculate Month diff between current minth and desired/future month
        ${month_difference}    Calculate Month Difference    ${M_Y}    ${CURRENT_MONTH_YEAR}
        Log    Month Difference in number:  ${month_difference}
        # Run for loop from 1 to number of clicks to reach the desired/future month
        FOR  ${counter}  IN RANGE    1    ${month_difference}
            # Click on next month button to move forward to the desired/future month
            Click    (//button[@class="vc-arrow vc-next vc-focus"])[1]
            ${counter}    Set Variable	${counter+1}
        END
        Matchlogic    1
    END


*** Keywords ***
# This keyword finds out the correct date  in the month to select for the one way trip
Matchlogic
     [Arguments]    ${index}
      ${number_of_rows}    Get Element Count    //*[@id="flight-tab-pane"]/div/div[4]/div/div/div/div[2]/div[1]
      ...    /div/div[2]/div[${index}]/div[2]/div
          ${number_of_col}    Get Element Count    //*[@id="flight-tab-pane"]/div/div[4]/div/div/div/div[2]
          ...    /div[1]/div/div[2]/div[${index}]/div[2]/div[1/div]
          FOR  ${rowidx}  IN RANGE    1    ${number_of_rows+1}
              FOR    ${colidx}    IN RANGE    1    ${number_of_rows+1}
                  ${actual_day}    Get Text    //*[@id="flight-tab-pane"]/div/div[4]/div/div/div/div[2]
                  ...    /div[1]/div/div[2]/div[${index}/div[2]/div[${rowidx}]/div[${colidx}]
                  IF  $actual_day == $T_DAY
                      Log To Console    "Day Mathced"
                      Click    //*[@id="flight-tab-pane"]/div/div[4]/div/div/div/div[2]
                      ...    /div[1]/div/div[2]/div[${index}]/div[2]/div[${rowidx}]/div[${colidx}]
                  END
            END
          END




