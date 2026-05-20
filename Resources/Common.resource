*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BASE_URL}    https://www.oncf-voyages.ma/
${BROWSER}     chrome

*** Keywords ***
Open ONCF Website
    Open Browser                    ${BASE_URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Implicit Wait      8s
    Run Keyword And Ignore Error    Click Element    id:close-install-app

Close ONCF Website
    Close Browser
