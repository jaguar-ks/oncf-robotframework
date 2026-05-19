*** Settings ***
Resource    ../Resources/Common.resource

*** Test Cases ***
String Should Exist In Web Elements When Match Exists
    String Should Exist In Web Elements    AGDAL    css:.mock-locator

String Should Exist In Web Elements When Match Does Not Exist
    Run Keyword And Expect Error    *Expected string 'MARRAKECH'*    String Should Exist In Web Elements    MARRAKECH    css:.mock-locator

*** Keywords ***
Get WebElements
    [Arguments]    ${locator}
    @{elements}=    Create List    CASA PORT    RABAT AGDAL    KENITRA
    RETURN    @{elements}

Get Text
    [Arguments]    ${element}
    RETURN    ${element}
