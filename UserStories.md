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