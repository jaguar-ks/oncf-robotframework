*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BASE_URL}    https://www.oncf-voyages.ma/
${BROWSER}     chrome

*** Keywords ***
Open ONCF Website
    Open Browser    ${BASE_URL}    ${BROWSER}
    Maximize Browser Window

Close ONCF Website
    Close Browser