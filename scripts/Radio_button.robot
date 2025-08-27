*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}       https://www.letskodeit.com/practice
${BROWSER}   chrome

*** Test Cases ***
Open Letskode And Verify Title
    Open Browser    ${URL}    ${BROWSER}
    Title Should Be    Practice Page
    Close Browser

*** Test Cases ***
Test radio_button
    Open Browser    ${URL}    ${BROWSER}
    Select Radio Button  cars    bmw
    Log     The bmw radio button option is selected
    Radio Button Should Be Set To     cars    bmw
    Sleep    1
    Close Browser

