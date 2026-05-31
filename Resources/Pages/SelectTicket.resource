*** Settings ***
Documentation    Ticket selection keywords for the ONCF booking flow.
Library     SeleniumLibrary
Resource    ../Locators.resource


*** Keywords ***
Select Ticket
    [Arguments]                      ${departure_time}
    [Documentation]                  Selecting a ticket based on the departure
    ${DEPARTURE_TIME_TICKET}=        Set Variable    css:[title$='${departure_time}']
    ${BOOK_BUTTON}=                  Set Variable
    ...                              xpath://div/label[contains(@title,"${departure_time}")]/ancestor::div[contains(@class,'trips-wrapper')]//button
    Wait Until Element Is Visible    ${DEPARTURE_TIME_TICKET}
    Scroll Element Into View         ${DEPARTURE_TIME_TICKET}
    Scroll Element Into View         ${BOOK_BUTTON}
    Click Element                    ${BOOK_BUTTON}
    Scroll Element Into View         ${SELECT_PRICE_BUTTON}
    Click Element                    ${SELECT_PRICE_BUTTON}
    Click Element                    ${ADD_TO_CART_BUTTON}

