*** Settings ***
Library    SeleniumLibrary
Library    support.py
Variables    ../Locators/Heroku.py
*** Variables ***
${URL}       https://the-internet.herokuapp.com/
${BROWSER}   chrome

*** Test Cases ***
Alert Should be Present
    ${URL}=    support.Read xml    herokuapp
    ${alerttext}=    support.Read xml    alerttext
    Open Browser    ${URL}    ${BROWSER}
    Sleep    1
    Click Element    ${java_alert}
    Sleep    2
    Click Element    ${click_for_js_alert}
    Sleep    2
    ${Text}=    Handle Alert
    Sleep    2
    Click Element    ${click_for_js_confirm}
    Sleep    2
#    ${Text}=    Handle Alert
    ${Text}=    Handle Alert    action=DISMISS
    Sleep    2
    Click Element    ${click_for_js_prompt}
    Sleep    2
#    Input Text Into Alert    Robot Framework Learning
    Input Text Into Alert    ${alerttext}
    Sleep    3
    Close All Browsers
