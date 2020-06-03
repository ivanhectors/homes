Feature: Enquiry Feature

Scenario: [1.1] User story : User could send the enquiry to the agent for the property
background : When user go to main sites  (https://www.homes.com.au/)
Given Do search from homepage
Then Click one of the listing
Then Try to enquire by filling the details
Then Email and notification will be sent to agent