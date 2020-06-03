Feature: Upgrade Listings Feature

Scenario: [4.1] User able to search property/Service in certain area via navbar
background : User go to main sites (https://www.homes.com.au/)
Given User Do search for find one of the listings
When User found and click one of the Listing
Then User Click UPGRADE THIS LISTING on details listings
Then Fill all off mandatory fields
Then Click on MAKE PAYMENTS
Then the listing upgraded after do the payment