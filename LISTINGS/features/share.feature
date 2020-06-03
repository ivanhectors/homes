Feature: Share Listings Feature

Scenario: [6.1] User are able to share property via Facebook
background : User go to main sites (https://www.homes.com.au/)
Given Do search for one of the property to share
Then On the search result, click one of the Property
Then Click on share Button
Then Click on Facebook
Then Make sure the facebook opens a new tab with property headline description in it.

Scenario: [6.2] User are able to share property via Twitter
background : User go to main sites (https://www.homes.com.au/)
Given Do search for one of the property for share to Twitter
Then On the search result, Click one of the property
Then Click on Share Button
Then Click on Twitter
Then Make sure the twitter opens a new tab with property headline description in it.

Scenario: [6.3] User are able to share property via Email
background : User go to main sites (https://www.homes.com.au/)
Given Do search for one of the property for share by Email
Then On the search result, Click One of the Property
Then Click Share Button on Details
Then Click on Email
Then Make sure it will redirect to send mail page

Scenario: [6.4] User are able to copy the property link
background : User go to main sites (https://www.homes.com.au/)
Given Do search for one of the property for copy the property link
Then On the Search result, Click one of the Property
Then Click Share Button on details
Then Click on Copy Link
Then Make sure the property link is properly copied

Scenario: [6.5] User are able to show the print preview.
background : User go to main sites (https://www.homes.com.au/)
Given Do search for one of the property for show print preview
Then On the Search result, Click One of the Property
Then Click share Button on Details
Then Click on Print Option
Then Make sure the property appears on print preview section with neat display