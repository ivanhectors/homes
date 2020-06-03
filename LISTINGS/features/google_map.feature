Feature: Google Map Feature

Scenario: [2.1] User story : User could know the location of the property by maps on the right side
background : When user go to main sites  (https://www.homes.com.au/)
Given Do search from homepage and click one of the listings result
Then After seach result is displayed, click to get more details
Then See the map below property descriptions
