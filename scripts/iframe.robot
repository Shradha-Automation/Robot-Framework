*** Settings ***
Library    SeleniumLibrary
Library    support.py
Variables    ../Locators/Letskode_practice.py
*** Variables ***
${URL}       https://demo.automationtesting.in/Frames.html
${BROWSER}   chrome

*** Test Cases ***
Iframe
    Open Browser    ${URL}    ${BROWSER}
    Sleep    2
    Select Frame    ID:singleframe
    Input Text    //input[@type="text"]    Testing
    Sleep    2
    Unselect Frame
    Close Browser


