*** Settings ***
Resource    ../resources/common.robot
Library    SeleniumLibrary

*** Test Cases ***

Open homepage
    [Documentation]    Opens the homepage and checks if the page is loaded
    Open Application    ${BASE_URL}
    Wait For Homepage To Load
    Close Browser