*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BASE_URL}    https://www.oncf-voyages.ma/
${BROWSER}     chrome

*** Keywords ***
Begin Web Test
    Open Browser    ${BASE_URL}    ${BROWSER}
    Maximize Browser Window

End Web Test
    Close All Browsers