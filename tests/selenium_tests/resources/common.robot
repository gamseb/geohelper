*** Settings ***
# https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html#Open%20Browser
Library    SeleniumLibrary

*** Variables ***
${BASE_URL}      localhost:8000

*** Keywords ***
Open Application
    [Arguments]    ${url}
    Open Browser    ${url}    firefox

wait for the homepage to load
	Wait Until Page Contains    Welcome to Geohelper

wait for the flags page to load
    Wait Until Page Contains Element    id=btn-flag-red

wait for the phone prefix page to load
	Wait Until Page Contains Element    xpath=//tr/th[text()="Afghanistan"]

select the ${color} button
	Click Button    id=btn-flag-${color}

check if the ${color} button is selected
	Wait Until Page Contains Element    xpath=//button[@id="btn-flag-${color}" and contains(@class, "active-btn-flag")]

check if the flag for ${country} is visible
	# Case sensitivie
	Wait Until Page Contains Element  xpath=//tr[not(contains(@class, "hidden-flag"))]/th[text()="${country}"]

check if the flag for ${country} is not visible
	# Case sensitive
	Wait Until Page Contains Element  xpath=//tr[contains(@class, "hidden-flag")]/th[text()="${country}"]
