*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}       https://www.google.com
${BROWSER}   HeadlessChrome

*** Test Cases ***
Open Google And Verify Title
    Open Browser    ${URL}    ${BROWSER}
    Title Should Be    Google
    Close Browser
