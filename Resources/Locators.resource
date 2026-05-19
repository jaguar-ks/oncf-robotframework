*** Variables ***
# ---------------[Search Locators]---------------
${DEPARTURE_STATION_FIELD}    id:origin
${ARRIVAL_STATION_FIELD}      id:destination
${DEPARTURE_TIME}             css:[placeholder='My departure']
${SEARCH_BUTTON}              css:#search-availability>button

# ---------------[Login Locators]---------------
${USER_LOGIN_ICON}      css:[class$='user_login_icon']>a[class$='user']
${EMAIL_INPUT}          id:SignInFormUsername
${PASSWORD_INPUT}       id:passwordInput
${LOGIN_BUTTON}         css:[class*='SignInForm_ctaSignIn']
${LOGIN_POP_MESSAGE}    css:#succes, #failure