*** Settings ***
Documentation    Template robot main suite.


*** Variables ***
&{credentials}    username=Tolga    password=123



*** Tasks ***
Log Variables
    Log    ${credentials}
    Log To Console    ${credentials}
    Log To Console    ${credentials}[username]