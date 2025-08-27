*** Settings ***
*** Variables ***
*** Test Cases ***

Test Case 1
    [tags]    Smoke
    Log    This is Test case 1
Test Case 2
    [tags]    Regression
    Log    This is Test case 2
Test Case 3
    [tags]    Regression
    Log    This is Test case 3
Test Case 4
    [tags]    Smoke
    Log    This is Test case 4
Test Case 5
    [tags]    Sanity
    Log    This is Test case 5
Test Case 6
    [tags]    Smoke
    Log    This is Test case 6
Test Case 7
    [tags]    Shradha
    Log To Console  This is Test case 7

# To run: robot -d results -i Smoke Scripts/Tags.robot
# To run all tcs inside directory: robot -d results -i Smoke Scripts/*.robot

*** Keywords ***