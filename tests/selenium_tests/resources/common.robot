*** Settings ***
# https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html#Open%20Browser
Library    SeleniumLibrary

*** Variables ***
${BASE_URL}      localhost:8000
#${valid_user}    testuser
#${valid_password}    testpassword

*** Keywords ***
Open Application
    [Arguments]    ${url}
    Open Browser    ${url}    firefox

Log In
    [Arguments]    ${username}    ${password}
    Input Text    id=username    ${username}
    Input Text    id=password    ${password}
    Click Button    xpath=//button[@type='submit']