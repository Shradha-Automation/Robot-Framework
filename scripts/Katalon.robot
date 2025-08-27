*** Settings ***
Library    SeleniumLibrary
Library    support.py
Variables    ../Locators/Katalon.py
*** Variables ***
${URL}       https://katalon.com/
${BROWSER}   chrome

*** Test Cases ***
Katalonstudio with page object concept
    ${URL}=    support.Read xml    applicationurl
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Element Should Be Visible    ${katalon_logo}
    Log    Logo is present
    Sleep    2
    Close Browser

