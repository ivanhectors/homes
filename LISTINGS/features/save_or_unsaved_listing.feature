Feature: Save or Unsave Listings Feature

Scenario: [5.1] User able to search property/Service in certain area via navbar
background : User go to main sites (https://www.homes.com.au/)
Given User LOGIN to their account as user not admin or agent or office admin
Then Do search for one of the property exp on New Apartments
Then On the search result, click the Favorite button with star icon on the listing thumbnails.
Then Enter Saved properties page
Then Make sure the saved property is listed in Saved Property page.

Scenario: [5.2] User are able to save a listing into Save Properties page in Listing details page.
background : User go to main sites (https://www.homes.com.au/)
Given User LOGIN to their account as user 
Then Do search for one of the property exp on Sold Properties
Then Click one of the property
Then On detail property, click the Favorite button with star icon.
Then Go to Saved properties page
Then Make sure the saved property is listed in Saved Property page after login

Scenario: [5.3] User are able to unsave a listing in Listing Result page.
background : User go to main sites (https://www.homes.com.au/)
Given User successfully LOGIN 
Then Do search for one of the property exp on Sold Properties which is already favorited
Then Go to Saved properties page 5.3
Then Make sure the unsaved property is removed in saved property page

Scenario: [5.4] User are able to unsave a listing in Listing details page.
background : User go to main sites (https://www.homes.com.au/)
Given User successfully login
Then Do search for one of the property exp on new apartment which is already favorited
Then Click on the property to go to detail property
Then Inside property detail page, click saved property to unsaved
Then Make sure the unsaved property is already removed in saved property page