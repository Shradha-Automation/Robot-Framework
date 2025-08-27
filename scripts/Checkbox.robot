*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}       https://www.letskodeit.com/practice
${BROWSER}   chrome

*** Test Cases ***
Open Google And Verify Title
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Sleep    2
    Title Should Be    Practice Page
    Close Browser


Test Checkboxes
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Sleep    2
    Checkbox Should Not Be Selected    id=bmwcheck
    Checkbox Should Not Be Selected    id=benzcheck
    Checkbox Should Not Be Selected    id=hondacheck
    Select Checkbox    id:bmwcheck
    Checkbox Should Be Selected    id:bmwcheck
    Unselect Checkbox    id:bmwcheck
    Select Checkbox    id:benzcheck
    Checkbox Should Be Selected    id:benzcheck
    Unselect Checkbox    id:benzcheck
    Select Checkbox    id=hondacheck
    Checkbox Should Be Selected    id=hondacheck
    Unselect Checkbox    id=hondacheck
    ${Checkbox_count}    Get Element Count    //legend[text()='Checkbox Example']/../label/input[@type='checkbox']
    Should be True    ${Checkbox_count}==3
    Close Browser


Test Dropdown
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Sleep    2
    Select From List By Value    id:carselect    honda
    Sleep    1
    Select From List By Index    id:carselect    1
    Sleep    1
    Close Browser