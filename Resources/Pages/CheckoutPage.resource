*** Settings ***
Library     SeleniumLibrary
Resource    ../Locators.resource

*** Keywords ***
Checkout Cart
    [Arguments]                      ${first_name}    ${last_name}
    Wait Until Element Is Visible    ${CONTINUE_BUTTON}
    Click Element                    ${CONTINUE_BUTTON}
    Wait Until Element Is Visible    ${CONTINUE_BUTTON_2}
    Click Element                    ${CONTINUE_BUTTON_2}
    Wait Until Element Is Visible    ${FIRST_NAME_FIELD}
    Input Text                       ${FIRST_NAME_FIELD}    ${first_name}
    Input Text                       ${LAST_NAME_FIELD}    ${last_name}
    Scroll Element Into View         ${GENERAL_CONDITIONS_CHECKBOX}
    Select Checkbox                  ${GENERAL_CONDITIONS_CHECKBOX}
    Scroll Element Into View         ${CONFIRM_BUTTON}
    Click Element                    ${CONFIRM_BUTTON}
    Wait Until Element Is Visible    ${SUMMARY_PAGE}
    Scroll Element Into View         ${PROCEED_TO_PAYEMENT_BUTTON}
    Click Element                    ${PROCEED_TO_PAYEMENT_BUTTON}
    Sleep    20s
