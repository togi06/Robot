*** Settings ***
Documentation    Template robot main suite 


*** Variables ***
${myName}    Tolga


*** Tasks ***
Log Variables
    ${myName}    Set Variable    My name is ${myName}
    log    ${myName}
    Log To Console    ${myName}
