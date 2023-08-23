*** Settings ***
Resource    ../resources/common.robot
Library    SeleniumLibrary

*** Test Cases ***

Open the phone prefix page
    [Documentation]    Opens the phone prefix page and checks if the page is loaded
    Open Application    ${BASE_URL}/phone_prefix
    Wait For The Phone Prefix Page To Load
    Close Browser