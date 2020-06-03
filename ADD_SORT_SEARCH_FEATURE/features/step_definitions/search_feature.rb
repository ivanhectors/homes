# Search Feature [1.1] User able to search properties via Search Navbar
 
When("user go to main sites") do
    directed_sites = $wait.until {
    $driver.navigate.to "https://www.homes.com.au/"
      e = $driver.find_element(:xpath,'/html/body/div[2]/div[1]/div[1]/div[1]/form/div/div[2]/div[2]/button')
      e if e.displayed?
      }
    puts "User go to main page : Passed!" if directed_sites.displayed?
    sleep(2)
end
  
Then("user select what kind of property or service to search") do
    $driver.find_element(:xpath,'//*[@id="dropdownSearch"]').click
    puts "User select what kind of property or service : Passed!"
    sleep(2)
end
  
When("drop down appear") do
    dropdown_appears = $wait.until {
      e = $driver.find_element(:xpath,'//*[@id="main-menu"]/ul[1]/li[1]/div/div/div')
      e if e.displayed?
      }
    puts "Dropdown Appears : Passed!" if dropdown_appears.displayed?
    sleep(2)
end
  
Then("select  one of the area provided") do
    dropdown_appears = $wait.until {
      e = $driver.find_element(:xpath,'//*[@id="main-menu"]/ul[1]/li[1]/div/div/div/a[7]')
      e if e.displayed?
      }
      puts "Dropdown available." if dropdown_appears.displayed?
      sleep(2)
    $driver.find_element(:xpath,'//*[@id="main-menu"]/ul[1]/li[1]/div/div/div/a[7]').click
    puts "Selected one of the list (SOLD): Passed!"
    sleep(5)
end
  
Then(/list of property\/services appear/) do
    wait = Selenium::WebDriver::Wait.new(:timeout => 10) 
    wait.until { $driver.find_element(:id => "search-result-container") }
    puts "List property appears : Passed!"
    sleep(2)
end


# # Search Feature [1.2] User able to search property/Service using suburbs, postcodes, or region via Search Box

# Then("user click on Types and select the options provided from dropdown") do
#   $driver.navigate.to "https://www.homes.com.au/"
#   dropdown_appears = $wait.until {
#   e = $driver.find_element(:css,'button.nav-item:nth-child(1)')
#   e if e.displayed?
#   }
#   puts "Element Available." if dropdown_appears.displayed?
#   $driver.find_element(:css,'button.nav-item:nth-child(1)').click
#   puts "User clicked on Types and select the options provided : Passed!"
#   sleep(2)
# end

# Then("user click on Search by suburbs, postcode, state or name") do
#   search = $wait.until {
#       element = $driver.find_element(:xpath,'/html/body/div[2]/div[1]/div[1]/div[1]/form/div/div[2]/div[1]/div/div[1]/div/span/span[1]/span/ul/li/input')
#       element if element.displayed?
#     }
#     puts "Search Box Available." if search.displayed?
#     search.send_keys("Western Australia")
#     puts "Input Search : Passed!" if search.displayed?
# end

# Then("user type down desired area and select the area from suggested dropdown") do
#   search = $wait.until {
#     element = $driver.find_element(:xpath,'/html/body/div[2]/div[1]/div[1]/div[1]/form/div/div[2]/div[1]/div/div[2]/div/div/button')
#     element if element.displayed?
#   }
#   puts "Area Dropdown Available." if search.displayed?
#   $driver.find_element(:xpath,'/html/body/div[2]/div[1]/div[1]/div[1]/form/div/div[2]/div[1]/div/div[2]/div/div/button').click
#   sleep(5)
#   search1 = $wait.until {
#     element = $driver.find_element(:xpath,'/html/body/div[2]/div[1]/div[1]/div[1]/form/div/div[2]/div[1]/div/div[2]/div/div/div/ul/li[2]/a')
#     element if element.displayed?
#   }
#   puts "Within 500 m Available." if search1.displayed?
#   $driver.find_element(:xpath,'/html/body/div[2]/div[1]/div[1]/div[1]/form/div/div[2]/div[1]/div/div[2]/div/div/div/ul/li[2]/a').click
#   sleep(5)
#   puts "Select Area : Passed!"
# end

# Then("click Search button") do
#   search = $wait.until {
#     element = $driver.find_element(:xpath,'/html/body/div[2]/div[1]/div[1]/div[1]/form/div/div[2]/div[2]/button')
#     element if element.displayed?
#   }
#   puts "Search Button Available." if search.displayed?
#   $driver.find_element(:xpath,'/html/body/div[2]/div[1]/div[1]/div[1]/form/div/div[2]/div[2]/button').click
#   puts "Click search button : Passed!"

# end


# # Search Feature [1.3] User able to search properties based on area
# $driver.navigate.to "https://homes.com.au/logout"
# Given(/Go to Search Result page. ex https:\/\/www.homes.com.au\/buy/) do
#   $driver.navigate.to "https://www.homes.com.au/buy/"
#   puts "Go to Search Result page. https://www.homes.com.au/buy/ : Passed!" if $wait.until {
#       "https://www.homes.com.au/buy/".match($driver.current_url())
#   }
#   sleep(2)
# end

# Then("Click on This Area drop down.") do
#     search1 = $wait.until {
#     element = $driver.find_element(:class,"changetextonlybtn")
#     element if element.displayed?
#   }
#   puts "Element Drop Down 'This Area Only' Available." if search1.displayed?
#   $driver.find_element(:class,"changetextonlybtn").click
#   puts "Click on This Area drop down : Passed!"
#   sleep(2)
# end

# Then("Select one kind of this area drop down menu.") do
#   sleep(2)
#   search1 = $wait.until {
#     element = $driver.find_element(:xpath,'//*[@id="search-box"]/div[2]/div/div/ul/li[2]')
#     element if element.displayed?
#   }
#   puts "Element List 'Within 500 M' Available." if search1.displayed?
#   sleep(2)
#   $driver.find_element(:xpath,'//*[@id="search-box"]/div[2]/div/div/ul/li[2]').click
#   puts "Select one kind of this area drop down menu. Exp : Within 500 m : Passed!"
#   sleep(2)
# end

# When("Click on Update button") do
#   search1 = $wait.until {
#     element = $driver.find_element(:xpath,'//*[@id="search-box"]/div[7]/button')
#     element if element.displayed?
#   }
#   puts "Element 'UPDATE' Available." if search1.displayed?
# $driver.find_element(:xpath,'//*[@id="search-box"]/div[7]/button').click
# puts "Click on Update button : Passed!"
# sleep(2)
# end

# Then %r{All properties based on area selected will be listed in search result} do
#   wait = Selenium::WebDriver::Wait.new(:timeout => 10) 
#   puts "All properties with properties based on area selected will be listed in search result : Passed!" if $wait.until {
#       "https://www.homes.com.au/buy/distance-500/view-grid".match($driver.current_url())
#   }
#   sleep(2)
 

# end



# # Search Feature [1.4] User able to search properties based on property types

# $driver.navigate.to "https://homes.com.au/logout"
# Given(/Go to Search Result page.  ex https:\/\/www.homes.com.au\/buy/) do
#   $driver.navigate.to "https://www.homes.com.au/buy/"
#   puts "Go to Search Result page. https://www.homes.com.au/buy/ : Passed!" if $wait.until {
#       "https://www.homes.com.au/buy/".match($driver.current_url())
#   }
#   sleep(2)
# end

# When(/Click on Property Types drop down/) do
#   search1 = $wait.until {
#   element = $driver.find_element(:xpath,'//*[@id="search-box"]/div[3]/div/div/div/span')
#   element if element.displayed?
#   }
#   puts "Element Drop Down 'Property Type' Available." if search1.displayed?
#   $driver.find_element(:xpath,'//*[@id="search-box"]/div[3]/div/div/div/span').click
#   puts "Click on Property Types drop down : Passed!"
#   sleep(2)
# end

# Then(/All property types will be listed in drop down/) do
#   search = $wait.until {
#       element = $driver.find_element(:xpath,'//*[@id="search-box"]/div[3]/div/div/ul')
#       element if element.displayed?
#     }
#     puts "All property types will be listed in drop down : " if search.displayed?
#     a = $wait.until {
#       element = $driver.find_element(:xpath,'//*[@id="search-box"]/div[3]/div/div/ul/li[1]/div/label/span')
#       element if element.displayed?
#     }
#     puts "House" if a.displayed?
#     b = $wait.until {
#       element = $driver.find_element(:xpath,'//*[@id="search-box"]/div[3]/div/div/ul/li[2]/div/label/span')
#       element if element.displayed?
#     }
#     puts "Apartment" if b.displayed?
#     c = $wait.until {
#       element = $driver.find_element(:xpath,'//*[@id="search-box"]/div[3]/div/div/ul/li[3]/div/label/span')
#       element if element.displayed?
#     }
#     puts "Land" if c.displayed?
#     d = $wait.until {
#       element = $driver.find_element(:xpath,'//*[@id="search-box"]/div[3]/div/div/ul/li[4]/div/label/span')
#       element if element.displayed?
#     }
#     puts "Townhouse" if d.displayed?
#     e = $wait.until {
#       element = $driver.find_element(:xpath,'//*[@id="search-box"]/div[3]/div/div/ul/li[5]/div/label/span')
#       element if element.displayed?
#     }
#     puts "Senior Living" if e.displayed?
#     f = $wait.until {
#       element = $driver.find_element(:xpath,'//*[@id="search-box"]/div[3]/div/div/ul/li[6]/div/label/span')
#       element if element.displayed?
#     }
#     puts "Acreage/Semi-Rulal" if f.displayed?
# end

# Then(/Choose one or two types of properties/) do
#   $driver.find_element(:xpath,'//*[@id="search-box"]/div[3]/div/div/ul/li[2]/div/label/span').click
#   $driver.find_element(:xpath,'//*[@id="search-box"]/div[3]/div/div/ul/li[3]/div/label/span').click
#   puts "Select one kind of this area drop down menu. Exp : Apartment & Land selected : Passed!"
#   sleep(2)
# end

# Then(/Click on Update button on page/) do
#   element = $wait.until {
#     element = $driver.find_element(:xpath,'//*[@id="search-box"]/div[7]/button')
#     element if element.displayed?
#   }
#   puts "Element 'UPDATE' Available." if element.displayed?
#   $driver.find_element(:xpath,'//*[@id="search-box"]/div[7]/button').click
#   puts "Click on Update button : Passed!"
#   sleep(2)
# end

# Then(/All properties based on property selected will be listed in search result/) do
  
#   puts "All properties based on property selected will be listed in search result : Passed!" if $wait.until {
#       "https://www.homes.com.au/buy/type-apartment-land/view-grid".match($driver.current_url())
#   }
#   sleep(2)

# end



# # Search Feature [1.5] User able to search properties based on the amount of bedrooms
# $driver.navigate.to "https://homes.com.au/logout"
# Given("Go to Search Result page.") do
#   $driver.navigate.to "https://www.homes.com.au/buy/"
#   puts "Go to Search Result page. https://www.homes.com.au/buy/ : Passed!" if $wait.until {
#       "https://www.homes.com.au/buy/".match($driver.current_url())
#   }
#   sleep(2)
# end

# When(/Click on bedroom tab./) do
#   element = $wait.until {
#         element = $driver.find_element(:xpath,'//*[@id="bed-range"]/div/div[1]')
#         element if element.displayed?
#       }
#       puts "Element 'Bathroom' Available." if element.displayed?
#   $driver.find_element(:xpath,'//*[@id="bed-range"]/div/div[1]').click
#   puts "Click on bedroom tab : Passed!"
#   sleep(2)
# end

# Then("Choose the amount range of bedroom ex: {int} to {int} bed") do |int, int2|
#   $driver.find_element(:xpath,'//*[@id="bed-range"]/div/div[2]/div/div[1]/div/div').click
#   sleep(2)
#   $driver.find_element(:xpath,'//*[@id="bed-range"]/div/div[2]/div/div[1]/div/ul/li[3]').click
#   sleep(2)
#   $driver.find_element(:xpath,'//*[@id="bed-range"]/div/div[2]/div/div[2]/div/div').click
#   sleep(2)
#   $driver.find_element(:xpath,'//*[@id="bed-range"]/div/div[2]/div/div[2]/div/ul/li[5]').click

#   puts "Choose the amount range of bedroom ex 2 to 4 bed : Passed!"
#   sleep(2)
# end

# When(/Click Update button/) do
#   element = $wait.until {
#         element = $driver.find_element(:xpath,'//*[@id="search-box"]/div[7]/button')
#         element if element.displayed?
#       }
#       puts "Element 'UPDATE' Available." if element.displayed?
#   $driver.find_element(:xpath,'//*[@id="search-box"]/div[7]/button').click
#   puts "Click on Update button : Passed!"
#   sleep(2)
# end

# Then(/All properties based on bedroom selected will be listed in search result/) do
#   wait = Selenium::WebDriver::Wait.new(:timeout => 10) 
#   puts "All properties based on bedroom selected will be listed in search result : Passed!" if $wait.until {
#       "https://www.homes.com.au/buy/bed-2-4/view-grid".match($driver.current_url())
#   }
#   sleep(2)

# end


# # Search Feature [1.6] User able to search properties with combined elements on filter box, Example: user wants to 
# # search for sale properties with 2 bathrooms, 3 car spaces, land size 300 m2, new establish and exclude under offer 
# # and auction.


# Given("Open and go to Search Result page.") do
#   $driver.navigate.to "https://homes.com.au/logout"
#   $driver.navigate.to "https://www.homes.com.au/buy/"
#   puts "Open and go to Search Result page. https://www.homes.com.au/buy/ : Passed!" if $wait.until {
#       "https://www.homes.com.au/buy/".match($driver.current_url())
#   }
#   sleep(2)
# end

# When("Click on Filter button") do
#   element = $wait.until {
#             element = $driver.find_element(:xpath,'//*[@id="filter-btn"]')
#             element if element.displayed?
#           }
#           puts "Element 'Filters' Available." if element.displayed?
#   $driver.find_element(:xpath,'//*[@id="filter-btn"]').click
#   puts "Click on Filter button : Passed!"
#   sleep(2)
# end

# Then("Select {int} bathrooms") do |int|
#   $driver.find_element(:xpath,'//*[@id="bath-range"]/div[2]/div/div/div/div').click
#   $driver.find_element(:xpath,'//*[@id="bath-range"]/div[2]/div/div/div/ul/li[3]').click
#   puts "Select 2 bathrooms : Passed!"
#   sleep(2)
# end

# Then("Select {int} car spaces") do |int|
#   $driver.find_element(:xpath,'//*[@id="car-range"]/div[2]/div/div/div/div').click
#   $driver.find_element(:xpath,'//*[@id="car-range"]/div[2]/div/div/div/ul/li[4]').click
#   puts "Select 3 car spaces : Passed!"
#   sleep(2)
# end

# Then("Select {int} as land size.") do |int|
#   $driver.find_element(:xpath,'//*[@id="land-range"]/div[2]/div/div/div/div').click
#   $driver.find_element(:xpath,'//*[@id="land-range"]/div[2]/div/div/div/ul/li[4]').click
#   puts "Select 300 as land size : Passed!"
#   sleep(2)
# end

# Then("Select {string}") do |string|
#   $driver.find_element(:xpath,'//*[@id="build-range"]/div[2]/div/div/div').click
#   $driver.find_element(:xpath,'//*[@id="build-range"]/div[2]/div/div/ul/li[2]').click
#   puts "Select new  : Passed!"
#   sleep(2)
# end

# Then("Check one of exclude options") do
#   $driver.find_element(:xpath,'//*[@id="search-box"]/div[6]/div/div[3]/div/p[1]/label').click
#   puts "Check one of exclude options exp : Exclude under offer  : Passed!"
#   sleep(2)
# end

# When("click update button for filter result") do
#   $driver.find_element(:xpath,'//*[@id="filter-val"]').click
#   element = $wait.until {
#     element = $driver.find_element(:xpath,'//*[@id="search-box"]/div[7]/button')
#     element if element.displayed?
#   }
#   puts "Element 'Update' Available." if element.displayed?
  
#   $driver.find_element(:xpath,'//*[@id="search-box"]/div[7]/button').click
#   puts "Click on Update button : Passed!"
#   sleep(2)
# end

# Then("All properties based on filter button selected will be listed in search result") do
#   wait = Selenium::WebDriver::Wait.new(:timeout => 10) 
#   puts "All properties based on bedroom selected will be listed in search result : Passed!" if $wait.until {
#       "https://www.homes.com.au/buy/land-300/bath-2/car-3/view-grid/build-new/exclude-underoffer".match($driver.current_url())
#   }
#   sleep(2)

# end


# # Search Feature [1.7] User  can refining search result by updating suburbs, Postodes, Regions in Homepage

# Given("Re-write with the new the suburbs, postcodes, or region to South Australia") do
#   $driver.navigate.to "https://www.homes.com.au/"
#   search = $wait.until {
#       element = $driver.find_element(:xpath,'/html/body/div[2]/div[1]/div/div[1]/form/div/div[2]/div[1]/div/div[1]/div/span[1]/span[1]/span/ul/li/input')
#       element if element.displayed?
#     }
#     search.send_keys("Austral")
#     puts "Re-write with the new the suburbs, postcodes, or region to Austral : Passed!"
 
#   sleep(5)
# end

# Then("Choose South Australia, Australia") do
#   $driver.find_element(:xpath,'//*[@id="select2-search-key-results"]/li[1]').click
#   puts "Choose Austral, NSW : Passed!"
#   sleep(5)
# end

# Then("Click search to find all the result.") do
#   $driver.find_element(:xpath,'/html/body/div[2]/div[1]/div/div[1]/form/div/div[2]/div[2]/button').click
#   puts "Click search to find all the result. : Passed!"
#   sleep(5)
# end

# When("After seach result is displayed change the option on Suburbs, Postcode, Regions as to Bondi and choose Bondi, NSW") do
#   wait = Selenium::WebDriver::Wait.new(:timeout => 10) 
#   puts "seach result is displayed : Passed!" if $wait.until {
#       "https://www.homes.com.au/buy/id-ZNcGKqyZ049qcYzXdzTynOlTCUrVmSOi".match($driver.current_url())
#   }
#   $driver.find_element(:xpath,'//*[@id="search-box"]/div[1]/div/span/span[1]/span/ul/span').click
#   search2 = $wait.until {
#       element = $driver.find_element(:xpath,'//*[@id="search-box"]/div[1]/div/span/span[1]/span/ul/li/input')
#       element if element.displayed?
#     }
#     search2.send_keys("Bondi")
#   sleep(2)
#   puts "Re-write with the new the suburbs, postcodes, or region to 'Bondi' : Passed!"
#   $driver.find_element(:xpath,'//*[@id="select2-search-key-results"]/li[1]').click
#   puts "Choose Bondi, NSW : Passed!"
#   sleep(2)
# end

# Then("Click update button [{float}]") do |float|
#   $driver.find_element(:xpath,'//*[@id="search-box"]/div[7]/button').click
#   puts "Click Update Button : Passed!"
#   sleep(10)
# end

# Then("Search result updated as user selection") do
#   wait = Selenium::WebDriver::Wait.new(:timeout => 10) 
#   puts "Search result updated as user selection : Passed!" if $wait.until {
#       "https://www.homes.com.au/buy/id-ZNcGKqyZ048sMmzrbIdeB61j6zbCm4lj/view-grid".match($driver.current_url())
#   }
#   sleep(2)

# end


# # Search Feature [1.8] User  can refining search result by updating  property types


# Given("User click on Property Types drop down to change another property types") do
#   $driver.navigate.to "https://www.homes.com.au/buy/"
#   sleep(5)
#   if ($driver.find_elements(:xpath,'/html/body/nav/div[1]/div[2]/div[1]/ul[2]/li[1]/a').size > 0)
#     puts "User Navigate to https://www.homes.com.au/buy/ : Passed!"
#   else
#     puts "Can't find the elements"
  
#   end

  
#   begin
#     $driver.find_element(:xpath, '//*[@id="search-box"]/div[3]/div/div/div/span')
#     $driver.find_element(:xpath, '//*[@id="search-box"]/div[3]/div/div/div/span').click 
#   rescue Selenium::WebDriver::Error::NoSuchElementError
#     raise 'The Element is not available'
#     expect(true).to be_truthy

#   end
#   puts "Click on Property Types drop down : Passed!"
#   sleep(2)
#   end
  
  
#   Then("All property types will be listed in property drop down") do
#     if ($driver.find_elements(:xpath,'//*[@id="search-box"]/div[3]/div/div/ul').size > 0)
#       puts "All property types will be listed in property drop down : Passed!"
#     else
#       puts "Can't find the elements"
#     end
#   end
  
#   Then("Change another property types") do
#     begin
#       $driver.find_element(:xpath, '//*[@id="search-box"]/div[3]/div/div/ul/li[1]/div/label/span')
#       $driver.find_element(:xpath, '//*[@id="search-box"]/div[3]/div/div/ul/li[1]/div/label/span').click 
#     rescue Selenium::WebDriver::Error::NoSuchElementError
#       raise 'The Element is not available'
#       expect(true).to be_truthy
#     end
#     puts "Change to another property types : Passed!"
#     sleep(2)
#   end
  
#   When("Click on Update button [{float}]") do |float|
#     begin
#       $driver.find_element(:xpath, '//*[@id="search-box"]/div[7]/button')
#       $driver.find_element(:xpath, '//*[@id="search-box"]/div[7]/button').click 
#     rescue Selenium::WebDriver::Error::NoSuchElementError
#       raise 'The Element is not available'
#       expect(true).to be_truthy
#     end
#     puts "Click on update button : Passed!"
#     sleep(2)
#   end
  
#   Then("Search result updated as property types selected") do
#     wait = Selenium::WebDriver::Wait.new(:timeout => 10) 
#   puts "Search result updated as property types selected : Passed!" if $wait.until {
#       "https://www.homes.com.au/buy/type-house/view-grid".match($driver.current_url())
#   }
#   end

#   # Search Feature [1.9] User  can refining search result by updating its amount of bedrooms

#   Given("User click on bedrooms min-max drop down to filter bedrooms") do
#     $driver.navigate.to "https://www.homes.com.au/buy/"
#   sleep(5)
#   if ($driver.find_elements(:xpath,'/html/body/nav/div[1]/div[2]/div[1]/ul[2]/li[1]/a').size > 0)
#     puts "User Navigate to https://www.homes.com.au/buy/ : Passed!"
#   else
#     puts "Can't find the elements"
#   end

#   begin
#     $driver.find_element(:xpath, '//*[@id="bed-range"]')
#     $driver.find_element(:xpath, '//*[@id="bed-range"]').click 
#   rescue Selenium::WebDriver::Error::NoSuchElementError
#     raise 'The Element is not available'
#     expect(true).to be_truthy
#   end
#   puts "Click on Bedrooms min-max : Passed!"
#   sleep(2)  
#   end
  
# Then("Re-choose the amount range of bedroom") do
#     begin
#         $driver.find_element(:xpath, '//*[@id="bed-range"]/div/div[2]/div/div[1]/div/div/span')
#         $driver.find_element(:xpath, '//*[@id="bed-range"]/div/div[2]/div/div[1]/div/div/span').click 
#     rescue Selenium::WebDriver::Error::NoSuchElementError
#         raise 'The Element is not available'
#         expect(true).to be_truthy
#     end
#       puts "Click on Min dropdown : Passed!"
#       sleep(2)
    
#     begin
#         $driver.find_element(:xpath, '//*[@id="bed-range"]/div/div[2]/div/div[1]/div/ul/li[3]')
#         $driver.find_element(:xpath, '//*[@id="bed-range"]/div/div[2]/div/div[1]/div/ul/li[3]').click 
#     rescue Selenium::WebDriver::Error::NoSuchElementError
#         raise 'The Element is not available'
#         expect(true).to be_truthy
#     end
      
#     puts "Click on Min dropdown exp (2) : Passed!"
#     sleep(2)
    
#     begin
#         $driver.find_element(:xpath, '//*[@id="bed-range"]/div/div[2]/div/div[2]/div/div/span')
#         $driver.find_element(:xpath, '//*[@id="bed-range"]/div/div[2]/div/div[2]/div/div/span').click 
#     rescue Selenium::WebDriver::Error::NoSuchElementError
#         raise 'The Element is not available'
#         expect(true).to be_truthy
#     end
#     puts "Click on Max dropdown : Passed!"
#     sleep(2)
    
#     begin
#         $driver.find_element(:xpath, '//*[@id="bed-range"]/div/div[2]/div/div[2]/div/ul/li[5]')
#         $driver.find_element(:xpath, '//*[@id="bed-range"]/div/div[2]/div/div[2]/div/ul/li[5]').click 
#     rescue Selenium::WebDriver::Error::NoSuchElementError
#         raise 'The Element is not available'
#         expect(true).to be_truthy
#     end
#     puts "Click on Max dropdown exp (4) : Passed!"
#     sleep(2)    
#   end
  
# When("Click on Update button to filter by min-max bedrooms") do
#     begin
#     $driver.find_element(:xpath, '//*[@id="bed-range"]/div/div[2]/div/div[1]/div/div/span').click
#     $driver.find_element(:xpath, '//*[@id="search-box"]/div[7]/button')
#     $driver.find_element(:xpath, '//*[@id="search-box"]/div[7]/button').click 
#     rescue Selenium::WebDriver::Error::NoSuchElementError
#     raise 'The Element is not available'
#     expect(true).to be_truthy
#     end
#     puts "Click on Update Button : Passed!"
#     sleep(2)
# end

  
# Then("Search result updated as bedrooms selected range") do
#     wait = Selenium::WebDriver::Wait.new(:timeout => 10) 
#     puts "Search result updated as bedrooms selected range : Passed!" if $wait.until {
#     "https://www.homes.com.au/buy/bed-2-4/view-grid".match($driver.current_url())
#     }

#   end


# # Search Feature [1.10] User able to search property/services in certain area and its nearby


# Given("Select what type of property or services you want on homepage") do
#   $driver.navigate.to "https://www.homes.com.au"
#   element = $wait.until {
#     e = $driver.find_element(:xpath,'//*[@id="search-type-navtab"]/button[2]')
#     e if e.displayed?
#     }
#     puts "'Rent' service available." if element.displayed?
#     $driver.find_element(:xpath,'//*[@id="search-type-navtab"]/button[2]').click  
#     sleep(5)
# end

# Then("Click on Search box and type search by region, suburb or postcode") do
#   element = $wait.until {
#     e = $driver.find_element(:xpath,'//*[@id="search-box"]/div/div[2]/div[1]/div/div[1]/div/span/span[1]/span/ul/li/input')
#     e if e.displayed?
#     }
#     puts "Search box available." if element.displayed?
#     element.send_keys("Western Australia")
#     puts "Input Search : Passed!" if element.displayed?
# end

# Then("Tick Include surrounding suburbs and set {int}KM radius") do |int|
#   search = $wait.until {
#     element = $driver.find_element(:xpath,'/html/body/div[2]/div[1]/div[1]/div[1]/form/div/div[2]/div[1]/div/div[2]/div/div/button')
#     element if element.displayed?
#     }
#     puts "Area Dropdown Available." if search.displayed?
#     $driver.find_element(:xpath,'/html/body/div[2]/div[1]/div[1]/div[1]/form/div/div[2]/div[1]/div/div[2]/div/div/button').click
#     sleep(5)
#     search1 = $wait.until {
#     element = $driver.find_element(:xpath,'//*[@id="distance-filter"]/div/div/div/ul/li[5]')
#     element if element.displayed?
#     }
#     puts "Within 5 KM Available." if search1.displayed?
#     $driver.find_element(:xpath,'//*[@id="distance-filter"]/div/div/div/ul/li[5]').click
#     sleep(5)
#     puts "Select Area : Passed!"
# end

# When("Click on update button for search in certain area for filter the result") do
#   search = $wait.until {
#     element = $driver.find_element(:xpath,'//*[@id="search-box"]/div/div[2]/div[2]/button')
#     element if element.displayed?
#     }
#     puts "Search Button Available." if search.displayed?
#     $driver.find_element(:xpath,'//*[@id="search-box"]/div/div[2]/div[2]/button').click
#     puts "Click search button : Passed!"
# end

# Then("Result property in certain area or nearby property appears") do
#     wait = Selenium::WebDriver::Wait.new(:timeout => 10) 
#     puts "All properties with properties based on area selected will be listed in search result : Passed!" if $wait.until {
#     "https://www.homes.com.au/rent/distance-5000".match($driver.current_url())
#     }
#     sleep(2)
# end





# ###############################################################################################################

# # Sort Feature [2.1] User can sort the listings using "Sort by" feature


# Given("User Click on Sort by tab") do
#   $driver.navigate.to "https://www.homes.com.au/buy/"
#   sleep(5)
#   if ($driver.find_elements(:xpath,'/html/body/nav/div[1]/div[2]/div[1]/ul[2]/li[1]/a').size > 0)
#     puts "User Navigate to https://www.homes.com.au/buy/ : Passed!"
#   else
#     puts "Can't find the elements"
#   end

#   begin
#       sleep(5)
#       $driver.find_element(:xpath, '//*[@id="select2-req_sort-container"]')
#       $driver.find_element(:xpath, '//*[@id="select2-req_sort-container"]').click 
#     rescue Selenium::WebDriver::Error::NoSuchElementError
#       raise 'The Element is not available'
#       expect(true).to be_truthy
#     end
#     puts "Click on Sort by Tab : Passed!"
#     sleep(2)  
#     end


#     Then("Choose one of sort by drop down from sort by") do
#       begin

#           $driver.navigate.to "https://www.homes.com.au/buy/sort-date-desc/view-grid"
#           sleep(2)
#         rescue Selenium::WebDriver::Error::NoSuchElementError
#           raise 'The Element is not available'
#           expect(true).to be_truthy
#       end
#         puts "Choose one of sort by drop down (Newest-Oldest) : Passed!"
#         sleep(2)  
#       end

# Then("Search result updated as sort by") do
#   wait = Selenium::WebDriver::Wait.new(:timeout => 10) 
# puts "Search result updated as sort by : Passed!" if $wait.until {
#     "https://www.homes.com.au/buy/sort-date-desc/view-grid".match($driver.current_url())
# }

# end
  


# # Sort Feature [2.2] User able to sort the result for rent properties ascending and descending either its date or price

# Given("User search function to search properties for rent") do
#   $driver.navigate.to "https://www.homes.com.au"
#   $driver.find_element(:xpath,'//*[@id="dropdownSearch"]').click
#   element = $wait.until {
#     e = $driver.find_element(:xpath,'/html/body/nav/div[1]/div[2]/div[1]/ul[1]/li[1]/div/div/div/a[2]')
#     e if e.displayed?
#     } 
#     puts "'Rent' service available." if element.displayed?
#     $driver.find_element(:xpath,'/html/body/nav/div[1]/div[2]/div[1]/ul[1]/li[1]/div/div/div/a[2]').click
#     sleep(5)
# end

# Then("Change the sorting drop down value and choose all possible option") do
#   element = $wait.until {
#       a = $driver.find_element(:xpath,'/html/body/div[2]/div[4]/div/div/div[1]/ul/li[5]/div/div/span/span[1]/span')
#       a if a.displayed?
#       }
#       puts "Dropdown Sort by Available" if element.displayed?
#       $driver.find_element(:xpath,'/html/body/div[2]/div[4]/div/div/div[1]/ul/li[5]/div/div/span/span[1]/span').click
#       $driver.navigate.to "https://www.homes.com.au/rent/sort-date-desc"
#       $driver.find_element(:xpath,'/html/body/div[2]/div[3]/div/form/div[7]/button').click
#       wait = Selenium::WebDriver::Wait.new(:timeout => 10) 
#       puts "All properties Sort by Date Descending : Passed!" if $wait.until {
#            "https://www.homes.com.au/rent/sort-date-desc/view-grid".match($driver.current_url())
#       }
#       sleep(2)

#   element2 = $wait.until {
#       b = $driver.find_element(:xpath,'/html/body/div[2]/div[4]/div/div/div[1]/ul/li[5]/div/div/span/span[1]/span')
#       b if b.displayed?
#       }
#       puts "Dropdown Sort by Available" if element2.displayed?
#       $driver.find_element(:xpath,'/html/body/div[2]/div[4]/div/div/div[1]/ul/li[5]/div/div/span/span[1]/span').click
#       $driver.navigate.to "https://www.homes.com.au/rent/sort-date-asc"
#       $driver.find_element(:xpath,'/html/body/div[2]/div[3]/div/form/div[7]/button').click
#       wait = Selenium::WebDriver::Wait.new(:timeout => 10) 
#       puts "All properties Sort by Date Ascending : Passed!" if $wait.until {
#            "https://www.homes.com.au/rent/sort-date-asc/view-grid".match($driver.current_url())
#       }
#       sleep(2)

#   element3 = $wait.until {
#       b = $driver.find_element(:xpath,'/html/body/div[2]/div[4]/div/div/div[1]/ul/li[5]/div/div/span/span[1]/span')
#       b if b.displayed?
#       }
#       puts "Dropdown Sort by Available" if element3.displayed?
#       $driver.find_element(:xpath,'/html/body/div[2]/div[4]/div/div/div[1]/ul/li[5]/div/div/span/span[1]/span').click
#       $driver.navigate.to "https://www.homes.com.au/rent/sort-price-asc"
#       $driver.find_element(:xpath,'/html/body/div[2]/div[3]/div/form/div[7]/button').click
#       wait = Selenium::WebDriver::Wait.new(:timeout => 10) 
#       puts "All properties Sort by Price Ascending : Passed!" if $wait.until {
#            "https://www.homes.com.au/rent/sort-price-asc/view-grid".match($driver.current_url())
#       }
#       sleep(2)

      
#   element4 = $wait.until {
#       b = $driver.find_element(:xpath,'/html/body/div[2]/div[4]/div/div/div[1]/ul/li[5]/div/div/span/span[1]/span')
#       b if b.displayed?
#       }
#       puts "Dropdown Sort by Available" if element4.displayed?
#       $driver.find_element(:xpath,'/html/body/div[2]/div[4]/div/div/div[1]/ul/li[5]/div/div/span/span[1]/span').click
#       $driver.navigate.to "https://www.homes.com.au/rent/sort-price-desc"
#       $driver.find_element(:xpath,'/html/body/div[2]/div[3]/div/form/div[7]/button').click
#       wait = Selenium::WebDriver::Wait.new(:timeout => 10) 
#       puts "All properties Sort by Price Descending : Passed!" if $wait.until {
#            "https://www.homes.com.au/rent/sort-price-desc/view-grid".match($driver.current_url())
#       }
#       sleep(2)        
# end

# Then("The result sorted as user selected") do
#   puts "All properties Sort by user selected : Passed!"
# end


# ################################################################################################
# # ADD Feature [3.1] User able to add listing


# Given("Login to one of the agent account") do
#   $driver.navigate.to "https://www.homes.com.au/login"
#   element = $wait.until {
#       a = $driver.find_element(:name,"email")
#       a if a.displayed?
#       }
#       puts "Email Field Available" if element.displayed?
#       element.send_keys("ivanhector@protonmail.com")
#       puts "Input Email 'ivanhector@protonmail.com' : Passed!"

#   element1 = $wait.until {
#       b = $driver.find_element(:name,"password")
#       b if b.displayed?
#       }
#       puts "Password Field Available" if element1.displayed?
#       element1.send_keys("123456Ivan")
#       puts "Input Password : Passed!"

#   element9 = $wait.until {
#       i = $driver.find_element(:xpath,'//*[@id="page-auth"]/div/div/div[4]/form/div/div[4]/button')
#       i if i.displayed?
#       }
#       puts "Button send email available" if element9.displayed?
#       $driver.find_element(:xpath,'//*[@id="page-auth"]/div/div/div[4]/form/div/div[4]/button').click

# end

# Then("On dashboard click listing tab and add listing") do
#   wait = Selenium::WebDriver::Wait.new(:timeout => 10) 
#       puts "Direct to Portal : Passed!" if $wait.until {
#       "https://www.homes.com.au/portal".match($driver.current_url())
#       }
#       sleep(2)

#   element1 = $wait.until {
#       a = $driver.find_element(:xpath,'/html/body/div/div[1]/div[2]/div/a[2]')
#       a if a.displayed?
#       }
#       puts "Listing menu available" if element1.displayed?
#       $driver.find_element(:xpath,'/html/body/div/div[1]/div[2]/div/a[2]').click

#   element2 = $wait.until {
#       b = $driver.find_element(:xpath,'/html/body/div/div[1]/div[2]/div/a[2]')
#       b if b.displayed?
#       }
#       puts "ADD Listing button available" if element2.displayed?
#       $driver.find_element(:xpath,'//*[@id="dropdownMenuLink"]').click   
#       puts "Clicked on ADD listing button"
# end

# Then("Select one of the listing type exp : Residential Sale") do
#   $driver.find_element(:xpath,'//*[@id="property-listing-portal"]/div[1]/div[1]/div/div[1]/a').click 
#       puts "Choose one of the listing type to 'Residensial Sale'"

# end

# Then("Fill all the required form") do
#   $driver.find_element(:xpath,'//*[@id="show_address_fields"]').click 
#       element = $wait.until {
#       a = $driver.find_element(:name,"country")
#       a if a.displayed?
#       }
#       puts "Country Field Available" if element.displayed?
#       element.send_keys("Australia")
#       puts "Input Country 'Australia' : Passed!"

#   element1 = $wait.until {
#       b = $driver.find_element(:name,"state")
#       b if b.displayed?
#       }
#       puts "State Field Available" if element1.displayed?
#       element1.send_keys("QLD")
#       puts "Input State 'QLD' : Passed!"

#   element2 = $wait.until {
#       c = $driver.find_element(:name,"suburb")
#       c if c.displayed?
#       }
#       puts "Suburb Field Available" if element2.displayed?
#       element2.send_keys("Gladstone Central")
#       puts "Input Suburb 'Gladstone Central' : Passed!"

#   element3 = $wait.until {
#       c = $driver.find_element(:name,"zipcode")
#       c if c.displayed?
#       }
#       puts "Postcode Field Available" if element3.displayed?
#       element3.send_keys("5555")
#       puts "Input Postcode '5555' : Passed!" 
      
#   element4 = $wait.until {
#       d = $driver.find_element(:name,"zipcode")
#       d if d.displayed?
#       }
#       puts "Street Number Field Available" if element4.displayed?
#       element4.send_keys("22")
#       puts "Input Street Number '22' : Passed!" 

#   element5 = $wait.until {
#       e = $driver.find_element(:name,"street")
#       e if e.displayed?
#       }
#       puts "Street Name/Type Field Available" if element5.displayed?
#       element5.send_keys("Auckland Street")
#       puts "Input Street Nama/Type 'Auckland Street' : Passed!" 
#       puts "Display all address details : Passed!" 
#       sleep(10)

#   element8 = $wait.until {
#       h = $driver.find_element(:name,"headline")
#       h if h.displayed?
#       }
#       puts "Property Headline field Available" if element8.displayed?
#       element8.send_keys("$ 1.000.000")
#       puts "Input Property Headline : Passed!"
  
#   element6 = $wait.until {
#       f = $driver.find_element(:name,"status")
#       f if f.displayed?
#       }
#       puts "Property status dropdown Available" if element6.displayed?
#       $driver.find_element(:xpath,'//*[@id="status-selectbox"]').click
#       $driver.find_element(:xpath,'/html/body/div/div[2]/div/div/div/form/div[1]/div[3]/div/div[1]/div/select/option[1]').click
#       puts "Choose Option 'Available' : Passed!"
#       sleep(5)

#   element7 = $wait.until {
#       g = $driver.find_element(:name,"property_type")
#       g if g.displayed?
#       }
#       puts "Property type dropdown Available" if element7.displayed?
#       $driver.find_element(:xpath,'/html/body/div/div[2]/div/div/div/form/div[1]/div[3]/div/div[2]/div/select').click
#       $driver.find_element(:xpath,'/html/body/div/div[2]/div/div/div/form/div[1]/div[3]/div/div[2]/div/select/option[7]').click
#       puts "Choose Option 'House' : Passed!"
  
#   element9 = $wait.until {
#       i = $driver.find_element(:name,"description")
#       i if i.displayed?
#       }
#       puts "Property description field Available" if element9.displayed?
#       element9.send_keys("This brand new duplex style home is finished perfectly and provides a great opportunity to invest in the property market or downsize for a low maintenance lifestyle. It's well situated in a new area with other quality homes, a flexible floorplan and a modern neutral colour scheme throughout.

#           Accommodation includes a functional layout of 3 bedrooms (master with WIR + ensuite), all-in-one main bathroom, caesarstone kitchen and open plan living space which seamlessly flows to the north facing alfresco & yard. There is also great storage, solar panels, oversized garage with remote and potential for good side yard access.")
#       puts "Input Property Description : Passed!"

#   element15 = $wait.until {
#       h = $driver.find_element(:name,"tax_rate")
#       h if h.displayed?
#       }
#       puts "Tax Rates Available" if element15.displayed?
#       element15.send_keys("0")
#       puts "Input Tax Rates : Passed!"
#       $driver.find_element(:xpath,'//*[@id="listing-property-data"]/div[5]/div/div/input').click
#       puts "Check the Newly Build : Passed!"

#   element13 = $wait.until {
#       l = $driver.find_element(:name,"price")
#       l if l.displayed?
#       }
#       puts "Garage Spaces dropdown Available" if element13.displayed?
#       element13.send_keys("1000000")
#       puts "Input price '1.000.000' : Passed!"

#   element10 = $wait.until {
#       j = $driver.find_element(:name,"bedrooms")
#       j if j.displayed?
#       }
#       puts "Bedrooms dropdown Available" if element10.displayed?
#       $driver.find_element(:name,"bedrooms").click
#       $driver.find_element(:xpath,'//*[@id="listing-property-rooms"]/div[1]/div/select/option[5]').click
#       puts "Choose Option '3' : Passed!"

#   element11 = $wait.until {
#       k = $driver.find_element(:name,"bathrooms")
#       k if k.displayed?
#       }
#       puts "Bathrooms dropdown Available" if element11.displayed?
#       $driver.find_element(:name,"bathrooms").click
#       $driver.find_element(:xpath,'//*[@id="listing-property-rooms"]/div[3]/div/select/option[4]').click
#       puts "Choose Option '2' : Passed!"

#   element12 = $wait.until {
#       l = $driver.find_element(:name,"garage_spaces")
#       l if l.displayed?
#       }
#       puts "Garage Spaces dropdown Available" if element12.displayed?
#       $driver.find_element(:name,"garage_spaces").click
#       $driver.find_element(:xpath,'//*[@id="listing-property-rooms"]/div[7]/div/select/option[3]').click
#       puts "Choose Option '1' : Passed!"     
      
#   element16 = $wait.until {
#       h = $driver.find_element(:name,"feature_name")
#       h if h.displayed?
#       }
#       puts "Feature Name Field Available" if element16.displayed?
#       element16.send_keys("Secret Room")
#       puts "Input New Feature Name : Passed!"
#       $driver.find_element(:xpath,'/html/body/div/div[2]/div/div/div/form/div[2]/div[2]/div/div/div[1]/div[1]/div[28]/input').click
#       $driver.find_element(:xpath,'/html/body/div/div[2]/div/div/div/form/div[2]/div[2]/div/div/div[1]/div[1]/div[22]/input').click
#       puts "Add some internal feature (Renovated Kitchen & Modern Kitchen) : Passed!"
#       $driver.find_element(:xpath,'/html/body/div/div[2]/div/div/div/form/div[2]/div[2]/div/div/div[2]/div[1]/div[21]/input').click
#       $driver.find_element(:xpath,'/html/body/div/div[2]/div/div/div/form/div[2]/div[2]/div/div/div[2]/div[1]/div[22]/input').click
#       puts "Add some eksternal feature (Swimming Pool & Tenis Court) : Passed!"
#       $driver.find_element(:xpath,'/html/body/div/div[2]/div/div/div/form/div[2]/div[2]/div/div/div[2]/div[2]/div[2]/input').click
#       $driver.find_element(:xpath,'/html/body/div/div[2]/div/div/div/form/div[2]/div[2]/div/div/div[2]/div[2]/div[8]/input').click
#       puts "Add some security feature (Alarm System & Swipe Card) : Passed!"
# end

# When("Done fill all required field") do
#   $driver.find_element(:xpath,'//*[@id="form-property-details"]/div[3]/button').click
#       puts "Click on Save button : Passed!"
#       sleep (10)
# end

# Then("Pres Save and go to next step") do
#   element = $wait.until {
#       a = $driver.find_element(:xpath,'//*[@id="edit-listing-residential"]/ul/li[2]/a/span')
#       a if a.displayed?
#       }
#       puts "Step 2 Inspection Times Button Available" if element.displayed?
#       $driver.find_element(:xpath,'//*[@id="edit-listing-residential"]/ul/li[2]/a/span').click
#       puts "Click on Inspection Times Button : Passed!"
# end

# Then("Set Inspection Times and save") do
#   element1 = $wait.until {
#       b = $driver.find_element(:name,"date")
#       b if b.displayed?
#       }
#       puts "Date field Available" if element1.displayed?
#       $driver.find_element(:xpath,'//*[@id="opentime-date"]').click
#       $driver.find_element(:xpath,'/html/body/div/div[2]/div/div/div/div[2]/div/div/div[1]/div[2]/form/div[1]/div/div[2]/div/div/div/div/table/tbody/tr[2]/td[4]').click
#       puts "Input date : Passed!"

#   element2 = $wait.until {
#       c = $driver.find_element(:xpath,'//*[@id="opentime-start-time"]')
#       c if c.displayed?
#       }
#       puts "Commencement Time Available" if element1.displayed?
#       $driver.find_element(:xpath,'//*[@id="opentime-start-time"]').click
#       $driver.find_element(:xpath,'/html/body/div/div[2]/div/div/div/div[2]/div/div/div[1]/div[2]/form/div[2]/div/div[2]/div/div/div/div/ul/li[33]').click
#       $driver.find_element(:xpath,'/html/body/div/div[2]/div/div/div/div[2]/div/div/div[1]/div[2]/form/div[4]/button').click
#       puts "Input Commencement Time & End Time : Passed!"
#       sleep (5)

# end

# Then("Go to next step for set images") do
#   element = $wait.until {
#       a = $driver.find_element(:xpath,'//*[@id="edit-listing-residential"]/ul/li[2]/a/span')
#       a if a.displayed?
#       }
#       puts "Step 2 Media Button Available" if element.displayed?
#       $driver.find_element(:xpath,'/html/body/div/div[2]/div/div/div/div[1]/div/ul/li[3]/a').click
#       puts "Click on Media Button : Passed!"
#       sleep (10)
# end

# Then("Upload at least one image for the property.") do
#   element = $wait.until {
#       l = $driver.find_element(:id,"property-dropzone")
#       l if l.displayed?
#       }
#       puts "Uploaded Image Available" if element.displayed?
#       # element.send_keys("C:\\Homes\\ADD_SORT_SEARCH_FEATURE\\images\\1.jpg")
#       puts "Input image : Passed!" 
#       sleep(10)
# end

# Then("Fill the property URL") do
#   element = $wait.until {
#       l = $driver.find_element(:name, "property_url")
#       l if l.displayed?
#       }
#       puts "Property URL Field Available" if element.displayed?
#       element.send_keys("www.homes.com.au")
#       puts "Input property URL : Passed!" 
# end


# Then("Click Save") do
#   element = $wait.until {
#       l = $driver.find_element(:id, "media-save-data")
#       l if l.displayed?
#       }
#       puts "Save Button Available" if element.displayed?
#       $driver.find_element(:xpath,'//*[@id="media-save-data"]').click
#       puts "Click on Save Button : Passed!"
#       sleep(5)
#       $driver.navigate.to "https://www.homes.com.au/logout"
# end


# ################################################################################################
# # Local School Feature [4.1] User able to search local schools by using two navigation bars.

# Given("Go to Listing detail page") do
#   $driver.navigate.to "https://homes.com.au/property/5785"
#   puts "Go to listing details page : Passed!"
#   sleep(5)
# end

# Then("Go to Local School section") do
#   element = $wait.until {
#       e = $driver.find_element(:xpath,'//*[@id="schools-container"]')
#       e if e.displayed?
#       } 
#       puts "Local School Section Available." if element.displayed?
#       sleep(5)
# end

# Then("Choose one of menu on {int}st bar.") do |int|
#   element = $wait.until {
#       e = $driver.find_element(:id,'public-tab')
#       e if e.displayed?
#       } 
#       puts "Public menu bar available." if element.displayed?
#       $driver.find_element(:id,'public-tab').click
#       puts "Choose one of the menu from 1st bar exp Public : Passed!"
#       sleep(5)
# end

# Then("Choose one of menu on {int}nd bar.") do |int|
#   element = $wait.until {
#       e = $driver.find_element(:id,'secondary-tab')
#       e if e.displayed?
#       } 
#       puts "Secondary menu bar available." if element.displayed?
#       $driver.find_element(:id,'secondary-tab').click
#       puts "Choose one of the menu from 1st bar exp Secondary : Passed!"
#       sleep(5)
# end

# Then("Local school lists with combined menus will appear.") do
#   element = $wait.until {
#       e = $driver.find_element(:xpath,'//*[@id="public-secondary-schools-container"]/div/div/div[2]/div/span[2]')
#       e if e.displayed?
#       } 
#       puts "Local School with Secondary tags display in the result : Passed!" if element.displayed?

#   element1 = $wait.until {
#       a = $driver.find_element(:xpath,'//*[@id="public-secondary-schools-container"]/div/div/div[2]/div/span[3]')
#       a if a.displayed?
#       } 
#       puts "Local School with Public tags display in the result : Passed!" if element1.displayed?
#       sleep(5)
# end


# # Local School Feature [4.2] User able to refine search local schools by updating two navigation bars.

# Given("Go to Listing detail page to refine") do
#   $driver.navigate.to "https://homes.com.au/logout"
#   $driver.navigate.to "https://homes.com.au/property/5785"
#   puts "Go to listing details page : Passed!"
#   sleep(5)
# end

# Then("Go to Local School section to refine") do
#   element = $wait.until {
#       e = $driver.find_element(:xpath,'//*[@id="schools-container"]')
#       e if e.displayed?
#       } 
#       puts "Local School Section Available." if element.displayed?
#       sleep(5)
# end

# Then("Choose one of menu on {int}st bar diffrent from previous tab") do |int|
#   element = $wait.until {
#       e = $driver.find_element(:id,'public-tab')
#       e if e.displayed?
#       } 
#       puts "Public menu bar available." if element.displayed?
#       $driver.find_element(:id,'public-tab').click
#       puts "Choose one of the menu from 1st bar exp Public : Passed!"
#       sleep(5)

#   element1 = $wait.until {
#       e = $driver.find_element(:id,'private-tab')
#       e if e.displayed?
#       } 
#       puts "Private menu bar available." if element1.displayed?
#       $driver.find_element(:id,'private-tab').click
#       puts "Choose one of the menu from 1st bar diffrent from previous tab exp Private : Passed!"
#       sleep(5)
# end

# Then("Choose one of menu on {int}nd bar diffrent from previous tab") do |int|
#   element = $wait.until {
#       e = $driver.find_element(:id,'secondary-tab')
#       e if e.displayed?
#       } 
#       puts "Secondary menu bar available." if element.displayed?
#       $driver.find_element(:id,'secondary-tab').click
#       puts "Choose one of the menu from 1st bar exp Secondary : Passed!"
#       sleep(5)

#   element1 = $wait.until {
#       e = $driver.find_element(:id,'primary-tab')
#       e if e.displayed?
#       } 
#       puts "Primary menu bar available." if element1.displayed?
#       $driver.find_element(:id,'primary-tab').click
#       puts "Choose one of the menu from 1st bar diffrent from previous tab exp Primary : Passed!"
#       sleep(5)
# end

# Then("Local school lists with new refine combined menus will appear.") do
#   element = $wait.until {
#       e = $driver.find_element(:xpath,'//*[@id="private-primary-schools-container"]/div[2]/div/div[2]/div/span[3]')
#       e if e.displayed?
#       } 
#       puts "Local School with Private tags display in the result : Passed!" if element.displayed?

#   element1 = $wait.until {
#       a = $driver.find_element(:xpath,'//*[@id="private-primary-schools-container"]/div[2]/div/div[2]/div/span[2]')
#       a if a.displayed?
#       } 
#       puts "Local School with Primary tags display in the result : Passed!" if element1.displayed?
#       sleep(5)
# end
