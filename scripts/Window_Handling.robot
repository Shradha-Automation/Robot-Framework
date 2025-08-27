*** Settings ***
Library    SeleniumLibrary
Library    support.py
Variables    ../Locators/Letskode_practice.py
*** Variables ***
${URL}       https://www.letskodeit.com/practice
${BROWSER}   chrome

*** Test Cases ***
Window Handling
    ${URL}=    support.Read xml    letskode
#    ${alerttext}=    support.Read xml    alerttext
    Open Browser    ${URL}    ${BROWSER}
    Sleep    1
    Click Element    ${Open_Window}
    Sleep    2
    ${win}=    Get Window Handles
    Switch Window    ${win}[1]
    Element Should Be Visible    ${Sign_in_Button}
    Click Element    ${Sign_in_Button}
    Sleep    2
    Close Window
    Switch Window    ${win}[0]
    Sleep    2
    Element Should Be Visible    ${Open_Window}
    ${className}=    Get Element Attribute    ${Sign_in_Button}    class
    Close All Browsers

