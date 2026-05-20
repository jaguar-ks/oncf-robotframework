*** Settings ***
Library          SeleniumLibrary
Resource         ../Resources/Common.resource
Resource         ../Resources/Pages/LoginPage.resource
Resource         ../Resources/Pages/SearchPage.resource
Resource         ../Resources/Pages/SelectTicket.resource
Test Setup       Open ONCF Website
Test Teardown    Close ONCF Website

*** Test Cases ***
Book 2 Tickets
    # Login To Account    ${USER_EMAIL}    ${USER_PASS}
    Search For Trip     CASA PORT    RABAT AGDAL
    Select Ticket       15:35
