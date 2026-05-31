*** Settings ***
Documentation    Common browser setup keywords used by the booking suites.
Library    SeleniumLibrary


*** Variables ***
${BASE_URL}    https://www.oncf-voyages.ma/
${BROWSER}     chrome


*** Keywords ***
Open ONCF Website
    [Documentation]    Open the ONCF booking website in the configured browser.
    Open Browser                    ${BASE_URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Implicit Wait      8s
    Run Keyword And Ignore Error    Click Element    id:close-install-app

Close ONCF Website
    [Documentation]    Close the browser session opened for the suite.
    Close Browser

