*** Variables ***
# ---------------[Search Locators]---------------
${DEPARTURE_STATION_FIELD}    id:origin
${ARRIVAL_STATION_FIELD}      id:destination
# ${DEPARTURE_TIME}             css:[placeholder='My departure']
${SEARCH_BUTTON}              css:#search-availability>button

# ---------------[Login Locators]---------------
${USER_LOGIN_ICON}      css:[class$='user_login_icon']>a[class$='user']
${EMAIL_INPUT}          id:SignInFormUsername
${PASSWORD_INPUT}       id:passwordInput
${LOGIN_BUTTON}         css:[class*='SignInForm_ctaSignIn']
${LOGIN_POP_MESSAGE}    css:#succes, #failure

# ---------------[Choose Locators]---------------
# ${BOOK_BUTTON}    xpath://div/label[contains(@title,'06:15')]/ancestor::div[contains(@class,'trips-wrapper')]//button
${SELECT_PRICE_BUTTON}    id:select-rate
${ADD_TO_CART_BUTTON}     id:add-to-cart
${TICKET_LIST}            css:.trip-card-wrapper

# ---------------[Cart Locators]---------------
${CONTINUE_BUTTON}                css:[href$='upsell']
${CONTINUE_BUTTON_2}              css:[href$='mes-coordonnees']
${FIRST_NAME_FIELD}               css:[class^='PassengerComponent_form']+div>[id='first-name']
${LAST_NAME_FIELD}                css:[class^='PassengerComponent_form']+div>[id='last-name']
${GENERAL_CONDITIONS_CHECKBOX}    css:[value='conditions']
${CONFIRM_BUTTON}                 id:confirm
${PROCEED_TO_PAYEMENT_BUTTON}     id:proceed-to-payement
${SUMMARY_PAGE}                   xpath://label[text()='Summary']