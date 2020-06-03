Feature: Search Feature
Scenario: [1.1] User able to search property/Service in certain area via navbar
When user go to main sites
Then user select what kind of property or service to search
When drop down appear
Then select  one of the area provided
Then list of property/services appear


# Scenario: [1.2] User able to search property/Service using suburbs, postcodes, or region via Search Box
# background : When user go to main sites
# Then user click on Types and select the options provided from dropdown
# Then user click on Search by suburbs, postcode, state or name
# Then user type down desired area and select the area from suggested dropdown
# Then click Search button  


# Scenario: [1.3] User able to search properties based on area
# background : When user go to main sites (https://www.homes.com.au/)
# Given Go to Search Result page. ex https://www.homes.com.au/buy
# Then Click on This Area drop down.
# Then Select one kind of this area drop down menu.
# When Click on Update button
# Then All properties based on area selected will be listed in search result

 
# Scenario: [1.4] User Story: User able to search properties based on property types
# background : When user go to main sites  (https://www.homes.com.au/)
# Given Go to Search Result page.  ex https://www.homes.com.au/buy
# When Click on Property Types drop down
# Then All property types will be listed in drop down
# Then Choose one or two types of properties
# Then Click on Update button on page
# Then All properties based on property selected will be listed in search result


# Scenario: [1.5] User Story: User able to search properties based on the amount of bedrooms
# background : When user go to main sites  (https://www.homes.com.au/)
# Given Go to Search Result page.
# When Click on bedroom tab.
# Then Choose the amount range of bedroom ex: 2 to 4 bed
# When Click Update button
# Then All properties based on bedroom selected will be listed in search result


# Scenario: [1.6] User story: User able to search properties with combined elements on filter box, Example: user wants to search for sale properties with 2 bathrooms, 3 car spaces, land size 100 m2, new establish and exclude under offer and auction. 
# background : When user go to main sites  (https://www.homes.com.au/)
# Given Open and go to Search Result page.
# When Click on Filter button
# Then Select 2 bathrooms
# Then Select 3 car spaces
# Then Select 300 as land size.
# Then Select "new" 
# Then Check one of exclude options
# When click update button for filter result
# Then All properties based on filter button selected will be listed in search result


# Scenario: [1.7] User story : User  can refining search result by updating suburbs, Postodes, Regions in Homepage.
# background : When user go to main sites  (https://www.homes.com.au/)
# Given Re-write with the new the suburbs, postcodes, or region to South Australia
# Then Choose South Australia, Australia
# Then Click search to find all the result.
# When After seach result is displayed change the option on Suburbs, Postcode, Regions as to Bondi and choose Bondi, NSW
# Then Click update button [1.7]
# Then Search result updated as user selection 


# Scenario: [1.8] User  can refining search result by updating  property types
# background : When user go to main sites  (https://www.homes.com.au/) and go to result page exp : (https://www.homes.com.au/buy/)
# Given User click on Property Types drop down to change another property types
# Then All property types will be listed in property drop down 
# Then Change another property types
# When Click on Update button [1.8]
# Then Search result updated as property types selected


# Scenario: [1.9] User can refining search result cby updating its amount of bedrooms
# background : When user go to main sites  (https://www.homes.com.au/) and go to result page exp : (https://www.homes.com.au/buy/)
# Given User click on bedrooms min-max drop down to filter bedrooms
# Then Re-choose the amount range of bedroom
# When Click on Update button to filter by min-max bedrooms
# Then Search result updated as bedrooms selected range
 
 
# Scenario: [1.10] User story: User able to search property/services in certain area and its nearby
# background : When user go to main sites  (https://www.homes.com.au/)
# Given Select what type of property or services you want on homepage
# Then Click on Search box and type search by region, suburb or postcode
# Then Tick Include surrounding suburbs and set 5KM radius
# When Click on update button for search in certain area for filter the result
# Then Result property in certain area or nearby property appears

