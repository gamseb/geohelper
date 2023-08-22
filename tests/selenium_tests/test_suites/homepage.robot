*** Settings ***
Resource    ../resources/common.robot

*** Test Cases ***

Open homepage
    [Documentation]    Opens the homepage and checks if the server is responding
    Open Application    ${BASE_URL}
    Page Should Contain    Welcome to Geohelper
    Close Browser

#Valid User Login
#    [Documentation]    Tests a valid user login
#    Open Application    ${BASE_URL}
#    Log In    valid_user    valid_password
#    Page Should Contain    Welcome, User!
#    Close Browser
#
#Invalid User Login
#    [Documentation]    Tests an invalid user login
#    Open Application    ${BASE_URL}
#    Log In    invalid_user    invalid_password
#    Page Should Contain    Invalid credentials
#    Close Browser