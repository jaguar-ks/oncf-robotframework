*** Settings ***
Resource    ../Resources/Common.resource

*** Test Cases ***
String Should Exist In Web Elements When Match Exists
    String Should Exist In Web Elements    Match    css:.mock-locator

String Should Exist In Web Elements When Match Does Not Exist
    Run Keyword And Expect Error    *Expected string 'Missing'*    String Should Exist In Web Elements    Missing    css:.mock-locator

String Should Exist In Web Elements With Empty Elements List
    Run Keyword And Expect Error    *Checked 0 element(s)*    String Should Exist In Web Elements    Missing    css:.empty-list

String Should Exist In Web Elements With Empty Element Texts
    Run Keyword And Expect Error    *Checked 2 element(s)*    String Should Exist In Web Elements    Missing    css:.empty-text-elements

*** Keywords ***
Get WebElements
    [Arguments]    ${locator}
    IF    '${locator}' == 'css:.empty-list'
        @{elements}=    Create List
    ELSE IF    '${locator}' == 'css:.empty-text-elements'
        @{elements}=    Create List    ${EMPTY}    ${EMPTY}
    ELSE
        @{elements}=    Create List    Element 1    Element 2 Match    Element 3
    END
    RETURN    @{elements}

Get Text
    [Arguments]    ${element}
    RETURN    ${element}
