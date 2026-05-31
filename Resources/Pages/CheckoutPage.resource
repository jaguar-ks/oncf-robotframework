*** Settings ***
Documentation    Checkout page keywords for completing the ONCF booking flow.
Library     SeleniumLibrary
Resource    ../Locators.resource


*** Keywords ***
Checkout Cart
    [Arguments]                      ${first_name}    ${last_name}
    Continue From Cart
    Fill Passenger Details           ${first_name}    ${last_name}
    Accept Terms And Confirm
    Proceed To Payment

Continue From Cart
    [Documentation]                  Move through the cart confirmation screens.
    Wait Until Element Is Visible    ${CONTINUE_BUTTON}
    Click Element                    ${CONTINUE_BUTTON}
    Wait Until Element Is Visible    ${CONTINUE_BUTTON_2}
    Click Element                    ${CONTINUE_BUTTON_2}

Fill Passenger Details
    [Arguments]                      ${first_name}    ${last_name}
    [Documentation]                  Fill the passenger information form.
    Wait Until Element Is Visible    ${FIRST_NAME_FIELD}
    Input Text                       ${FIRST_NAME_FIELD}    ${first_name}
    Input Text                       ${LAST_NAME_FIELD}    ${last_name}

Accept Terms And Confirm
    [Documentation]                  Accept the conditions and confirm the order.
    Scroll Element Into View         ${GENERAL_CONDITIONS_CHECKBOX}
    Select Checkbox                  ${GENERAL_CONDITIONS_CHECKBOX}
    Scroll Element Into View         ${CONFIRM_BUTTON}
    Click Element                    ${CONFIRM_BUTTON}
    Wait Until Element Is Visible    ${SUMMARY_PAGE}

Proceed To Payment
    [Documentation]                  Reach the payment step after confirmation.
    Scroll Element Into View         ${PROCEED_TO_PAYEMENT_BUTTON}
    Click Element                    ${PROCEED_TO_PAYEMENT_BUTTON}
    Sleep    20s

