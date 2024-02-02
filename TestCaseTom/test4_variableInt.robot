*** Settings ***
Documentation    Template robot main suite.


*** Variables ***
${year}    ${2023}  #burada sayiyi dolar isaretiyle yaprigimiz icin Integer oldu yoksa Strin olarak kalacakti


*** Tasks ***
Log Variables
    ${dividedyear}    Set Variable    I live in ${year}
    ${dividedyear}    Evaluate    ${year}/5 
    Log    ${year} 
    Log To Console    ${year}
    Log To Console    ${dividedyear}