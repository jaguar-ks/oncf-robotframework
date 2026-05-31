*** Settings ***
Documentation    Login page keywords for the ONCF booking flow.
Library          SeleniumLibrary
Resource    ../Locators.resource


*** Keywords ***
Login To Account
    [Documentation]                  Login to account with email and password
    [Arguments]                      ${email}    ${password}
    Wait Until Element Is Visible    ${USER_LOGIN_ICON}
    Click Element                    ${USER_LOGIN_ICON}
    Wait Until Element Is Visible    ${EMAIL_INPUT}
    Input Text                       ${EMAIL_INPUT}    ${email}
    Input Text                       ${PASSWORD_INPUT}    ${password}
    Click Element                    ${LOGIN_BUTTON}
    Wait Until Element Is Visible    ${LOGIN_POP_MESSAGE}
    Element Text Should Be           ${LOGIN_POP_MESSAGE}    Successfully logged in
