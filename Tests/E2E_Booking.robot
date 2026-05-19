*** Settings ***
Library          SeleniumLibrary
Resource         ../Resources/Common.resource
Resource         ../Resources/Pages/LoginPage.resource
Resource         ../Resources/Pages/SearchPage.resource
Test Setup       Begin Web Test
Test Teardown    End Web Test

*** Test Cases ***
Book 2 Tickets
    Login To Account    ${USER_EMAIL}    ${USER_PASS}
    Search For Trip     CASA PORT    RABAT AGDAL
