*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Variables ***
${BASE_URL}    https://www.oncf-voyages.ma/
${BROWSER}     chrome

*** Keywords ***
Open ONCF Website
    Open Browser    ${BASE_URL}    ${BROWSER}
    Maximize Browser Window

Close ONCF Website
    Close Browser

String Should Exist In Web Elements
    [Arguments]    ${expected_string}    ${elements_locator}
    ${elements}=    Get WebElements    ${elements_locator}
    ${is_found}=    Set Variable    ${False}
    @{checked_texts}=    Create List
    FOR    ${element}    IN    @{elements}
        ${element_text}=    Get Text    ${element}
        ${match_found}=    Run Keyword And Return Status    Should Contain    ${element_text}    ${expected_string}
        IF    ${match_found}
            ${is_found}=    Set Variable    ${True}
            BREAK
        ELSE
            Append To List    ${checked_texts}    ${element_text}
        END
    END
    ${checked_count}=    Get Length    ${checked_texts}
    ${checked_values}=    Catenate    SEPARATOR= |     @{checked_texts}
    Should Be True    ${is_found}    Expected string '${expected_string}' was not found in elements located by '${elements_locator}'. Checked ${checked_count} element(s): ${checked_values}
