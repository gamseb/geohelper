*** Settings ***
Resource    ../resources/common.robot
Library    SeleniumLibrary

*** Test Cases ***

Open Flags page
    [Documentation]    Opens the Flags page and checks if the page is loaded
    Open Application    ${BASE_URL}/flags
    Wait For The Flags Page To Load
    Close Browser

Click button
    [Documentation]    Select the red button and check if the button is selected
    Open Application    ${BASE_URL}/flags
    select the red button
    Check If The red Button Is Selected
    Close Browser

Hide flags
    [Documentation]    Select the black button and check that Italy is not visible
    Open Application    ${BASE_URL}/flags
    select the black button
    check if the flag for Italy is not visible
    Close Browser

Reset button
    [Documentation]    Check if the reset button correctly unhides hidden flags
    Open Application    ${BASE_URL}/flags
    select the black button
    check if the flag for Ireland is not visible
    select the reset button
    check if the flag for Ireland is visible
    Close Browser