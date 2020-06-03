Feature: View Listing Feature

Scenario: [1.11] User are able to view listing details
background : When user go to main sites  (https://www.homes.com.au/)
Given Do a search
Then On the search result, click one of the listing
Then Make sure that Details of the listing is displayed properly
Then Company logo and information are displayed
When The logo or the link to provider is clicked 
Then redirect to its profile
Then User can see company phone number