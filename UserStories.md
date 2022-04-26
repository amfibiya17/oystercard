# User story 1
In order to use public transport
As a customer
I want money on my card

# Function represtation
Objects:
- Money
- Card

Verbs:
- have_money

# Diagram
Card <--has_money--> Money


# User story 2
In order to keep using public transport
As a customer
I want to add money to my card

# Function representation
Objects:
- Money
- Card

Verbs:
- top_up

# Diagram
Card <--top_up--> Money

# User story 3
In order to protect my money from theft or loss
As a customer
I want a maximum limit (of £90) on my card

# Function representation
Objects:
- Card
- Money

Verbs:
- has_limit

# Diagram
Card <--has_limit--> Money

# User story 4
In order to pay for my journey
As a customer
I need my fare deducted from my card

# Function representation
Objects:
- Card
- Money

Verbs:
- deduct

# Diagram
Card <--deduct--> Money

# User story 5
In order to get through the barriers.
As a customer
I need to touch in and out.

# Function representation
Objects:
- Card
- Gate

Verbs:
- touch_in
- touch_out

# Diagram
Card <--touch_in--> Gate
Card <--touch_out--> Gate


# User story 6
In order to pay for my journey
As a customer
I need to have the minimum amount (£1) for a single journey.

# Function representation
Objects:
- Card
- Amount

Verbs:
- has_min_amount

# Diagram
Card <--has_min_amount--> £1

# User story 7
In order to pay for my journey
As a customer
When my journey is complete, I need the correct amount deducted from my card

# Function representation
Objects:
- Card
- Amount
- Money

Verbs:
- touch_out
- deduct

# Diagram
Card <--touch_out--> money
Card <--deduct--> money

# User story 8
In order to know where I have been
As a customer
I want to see all my previous trips

# Function representation
Objects:
- previous_journey

Verbs:
- ???

# Diagram
Previous_journeys << journey

# User story 9
In order to know how far I have travelled
As a customer
I want to know what zone a station is in

# Function representation
Objects:
- Station

Verbs:
- ???

# Diagram
station <--> card
