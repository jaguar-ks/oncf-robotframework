*** Settings ***
Library          SeleniumLibrary
Library          DataDriver    file=../Data/TestingData.csv    dialect=excel
Resource         ../Resources/Common.resource
Resource         ../Resources/Pages/LoginPage.resource
Resource         ../Resources/Pages/SearchPage.resource
Resource         ../Resources/Pages/SelectTicket.resource
Test Setup       Open ONCF Website
Test Teardown    Close ONCF Website
Test Template    Book Ticket Workflow

*** Test Cases ***
Book A Ticket From ${DEPARTURE_STATION} TO ${ARRIVAL_STATION}
    [Documentation]    Data-driven template test populated from TestingData.csv

*** Keywords ***
Book Ticket Workflow
    [Arguments]    ${USER_EMAIL}    ${USER_PASS}    ${DEPARTURE_STATION}    ${ARRIVAL_STATION}    ${DEPARTURE_TIME}
    Login To Account    ${USER_EMAIL}    ${USER_PASS}
    Search For Trip     ${DEPARTURE_STATION}    ${ARRIVAL_STATION}
    Select Ticket       ${DEPARTURE_TIME}
