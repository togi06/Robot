*** Settings ***
Documentation    Template robot main suite
Library    SeleniumLibrary
Resource    ../Resources/devdata.robot

*** Tasks ***
Log Website Url
    log    ${website_url}
    Log To Console    ${website_url}