# Oncf E2E test cases

login to account and select a ticket than head to checkout 

# Pre Conditions

- user on home page
- user have an account
- the route with the provided time is have empty seats available

# Steps

## Login to account

    1. click user icon
    2. fill credentials form
    3. submit form
> ### Expected results:
>
> pop up message announcing successful login

## Search for trip

    1. select departure station
    2. select arrival station
    3. choose the day of the trip
    4. search for available departure timings
> ### Expected results:
>
> redirected to the ticket’s list page to choose the timing

## Select the wanted ticket

    1. choose the wanted departure timing
    2. book the ticket
    3. select the Semi-Flexible Public Price
    4. add the ticket to the cart
> ### Expected results:
>
> the ticket should be added to cart successfully with a pop up message confirming it

## Head to checkout

    1. click on the “continue” button on the cart
    2. click on the “continue” button for a second time
    3. fill the first and last name on both tickets
    4. accept the personal data policy
    5. select payment method
    6. click on “confirm” button
    7. verify the trip details
    8. proceed to payment

> ### Expected results
>
> The user is redirected to the payment page to entre his card infos
