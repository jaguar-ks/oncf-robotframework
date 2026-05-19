*** Settings ***
Library          SeleniumLibrary

*** Variables ***
${USER_LOGIN_ICON}      css:[class$='user_login_icon']>a[class$='user']
${EMAIL_INPUT}          id:SignInFormUsername
${PASSWORD_INPUT}       id:passwordInput
${LOGIN_BUTTON}         css:[class*='SignInForm_ctaSignIn']
${LOGIN_POP_MESSAGE}    css:#succes, #failure

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