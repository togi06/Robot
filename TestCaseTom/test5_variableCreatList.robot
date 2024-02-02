*** Settings ***
Documentation    Template robot main suite.    

*** Variables ***
@{fruits}    apple    orange    banana
#@ list olusturacagimiz zaman $ degil @ kullaniyoruz



*** Tasks ***
Log Variables
    ${love}    Set Variable    I love ${fruits}
    Log    ${fruits}
    Log To Console    ${fruits}[2]
    Log To Console    ${love}