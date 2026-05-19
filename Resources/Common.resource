*** Settings ***
Library    SeleniumLibrary

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
    FOR    ${element}    IN    @{elements}
        ${element_text}=    Get Text    ${element}
        ${match_found}=    Run Keyword And Return Status    Should Contain    ${element_text}    ${expected_string}
        IF    ${match_found}
            ${is_found}=    Set Variable    ${True}
            BREAK
        END
    END
    Should Be True    ${is_found}    Expected string '${expected_string}' was not found in elements located by '${elements_locator}'.
