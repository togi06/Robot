*** Settings ***
Documentation    If /Else in Robotframework

*** Test Cases ***
If Condition with treu
    [Documentation]    if condition
    IF  1 == 1
        Log To Console    1 is equal to 1
        
    END
# bu durum dogru oldugu icin durumu basmakta sorun olmayacak

If condition with false
    [Documentation]    if condition
    IF  1 == 3
        Log To Console    1 is equal to 3

    END
# burada durum yanlis oldugu icin durumu basmadi

If condition with false2
    [Documentation]    if condition
    IF  1 != 3
        Log To Console    1 is equal to 3

    END
# burada durum yanlis degil cunku esittirden once ! kullanildigi icin durumu ters yapiyor

If Else condition
    [Documentation]    if else
    IF    1 == 3
        Log To Console    1 is equal to 1
    ELSE IF    3==3
        Log To Console    3 is equal to 3
    END

If else Condition 2
    [Documentation]    if else

    IF    1 == 3
        Log To Console    1 is equal to 1
    ELSE IF    1 > 3
        Log To Console    1 is greater then 3
    ELSE
        Log To Console    1 is less than 3
    END