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


