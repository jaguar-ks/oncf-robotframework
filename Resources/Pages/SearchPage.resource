*** SettingS ***
Library     SeleniumLibrary
Resource    ../Locators.resource


*** Keywords ***
Search For Trip
    [Arguments]                      ${Departure}    ${Arrival}
    [Documentation]                  Searching for availability of a trip
    Wait Until Element Is Visible    ${DEPARTURE_STATION_FIELD}
    Input Text                       ${DEPARTURE_STATION_FIELD}    ${Departure}
    Click Element                    css:[title='${Departure}']
    Input Text                       ${ARRIVAL_STATION_FIELD}    ${Arrival}
    Click Element                    css:[title='${Arrival}']
    Click Element                    ${SEARCH_BUTTON}
    Sleep                            20s
    # Pause Execution                  Check the page state, then click OK to continue.
