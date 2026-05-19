*** Settings ***
Resource    ../Resources/Common.resource

*** Test Cases ***
String Should Exist In Web Elements When Match Exists
    String Should Exist In Web Elements    Match    css:.mock-locator

String Should Exist In Web Elements When Match Does Not Exist
    Run Keyword And Expect Error    *Expected string 'Missing'*    String Should Exist In Web Elements    Missing    css:.mock-locator

*** Keywords ***
Get WebElements
    [Arguments]    ${locator}
    @{elements}=    Create List    Element 1    Element 2 Match    Element 3
    RETURN    @{elements}

Get Text
    [Arguments]    ${element}
    RETURN    ${element}
