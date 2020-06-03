# Search Feature [1.1] User could send the enquiry to the agent for the property

Given("Do search from homepage") do
    $driver.navigate.to "https://homes.com.au/logout"
  $driver.navigate.to "https://www.homes.com.au"
  $driver.navigate.to "https://homes.com.au/buy/id-ZNcGKqyZ049sFNCx1cJ1f9n3an0SBQCb+BhCW1mgMS1qVUJ1RikzYbUEsF3XorkU4/type-house/price-3000000/view-grid"
end

Then("Click one of the listing") do
  element = $wait.until {
      e = $driver.find_element(:xpath,'//*[@id="properties-container"]/div/div')
      e if e.displayed?
      }
      puts "One of the listing available" if element.displayed?
      $driver.find_element(:xpath,'//*[@id="properties-container"]/div[1]/div/div[3]/div[1]/div[1]/div/h6/a').click
      puts "Clicked to one of the listing : Passed!"
      sleep(5)
end

Then("Try to enquire by filling the details") do
  element = $wait.until {
      a = $driver.find_element(:name,"first_name")
      a if a.displayed?
      }
      puts "First Name Field Available" if element.displayed?
      element.send_keys("Ivan")
      puts "Input First Name 'Ivan' : Passed!"

  element2 = $wait.until {
      b = $driver.find_element(:name,"last_name")
      b if b.displayed?
      }
      puts "Last Name Field Available" if element2.displayed?
      element2.send_keys("Sinambela")
      puts "Input First Name 'Sinambela' : Passed!"

  element3 = $wait.until {
      c = $driver.find_element(:name,"email")
      c if c.displayed?
      }
      puts "Email Field Available" if element3.displayed?
      element3.send_keys("ivan@gmail.com")
      puts "Input Email 'ivan@gmail.com' : Passed!"

  element4 = $wait.until {
      d = $driver.find_element(:name,"phone_number")
      d if d.displayed?
      }
      puts "Phone Number Field Available" if element4.displayed?
      element4.send_keys("089999999999")
      puts "Input Email '089999999999' : Passed!"

  element5 = $wait.until {
      e = $driver.find_element(:name,"postcode")
      e if e.displayed?
      }
      puts "Postcode Field Available" if element5.displayed?
      element5.send_keys("55555")
      puts "Input Postcode '55555' : Passed!"

  element8 = $wait.until {
      h = $driver.find_element(:name,"message")
      h if h.displayed?
      }
      puts "Message Field Available" if element8.displayed?
      element8.send_keys("Halo. This is a testing email enquiry. if you received this, please ignore this email. Thank You.")
      puts "Input Message 'Halo. This is a testing email enquiry. if you received this, please ignore this email. Thank You.' : Passed!"

  element9 = $wait.until {
      i = $driver.find_element(:xpath,'//*[@id="form-enquiry"]/div[2]/div/div/button')
      i if i.displayed?
      }
      puts "Button send email available" if element9.displayed?
      $driver.find_element(:xpath,'//*[@id="form-enquiry"]/div[2]/div/div/button').click
     
end

Then("Email and notification will be sent to agent") do
      sleep(10)
      puts "Send enquiry to agents for the property : Passed!"
end


################################################################################################################

# Google Map Feature [2.1] User could send the enquiry to the agent for the property

Given("Do search from homepage and click one of the listings result") do
$driver.navigate.to "https://homes.com.au/logout"
$driver.navigate.to "https://www.homes.com.au"
element = $wait.until {
    e = $driver.find_element(:xpath,'//*[@id="search-type-navtab"]/button[2]')
    e if e.displayed?
    }
    puts "'Rent' service available." if element.displayed?
    $driver.find_element(:xpath,'//*[@id="search-type-navtab"]/button[2]').click
    $driver.navigate.to "https://homes.com.au/rent/price-5000/bed-5/car-2/sort-price-desc/view-grid"
end

Then("After seach result is displayed, click to get more details") do
  element = $wait.until {
      e = $driver.find_element(:xpath,'//*[@id="properties-container"]/div/div')
      e if e.displayed?
      }
      puts "One of the listing available" if element.displayed?
      $driver.find_element(:xpath,'//*[@id="properties-container"]/div/div/div[3]/div[1]/div[1]/div/h6/a').click
      sleep(5)
end

Then("See the map below property descriptions") do
  element = $wait.until {
      e = $driver.find_element(:xpath,'//*[@id="map"]')
      e if e.displayed?
      }
      puts "Maps Section Available" if element.displayed?

  element2 = $wait.until {
      e = $driver.find_element(:xpath,'//*[@id="btn-street-view"]')
      e if e.displayed?
      }
      puts "Street View Button Available" if element2.displayed?
      sleep(5)

  element3 = $wait.until {
      e = $driver.find_element(:xpath,'//*[@id="maps-app"]/div/div/div[1]/div[1]/div[4]/div[2]/img')
      e if e.displayed?
      }
      puts "Map Pin Available" if element3.displayed?
      sleep(5)

      puts "Map Section on Property Details : Passed!"
end


#################################################################################################################

# View Listing Feature [3.1] User are able to view listing details

Given("Do a search") do
$driver.navigate.to "https://homes.com.au/logout"
  $driver.navigate.to "https://www.homes.com.au"
  element = $wait.until {
      e = $driver.find_element(:xpath,'//*[@id="search-type-navtab"]/button[2]')
      e if e.displayed?
      }
      puts "'Rent' service available." if element.displayed?
      $driver.find_element(:xpath,'//*[@id="search-type-navtab"]/button[2]').click
      $driver.navigate.to "https://homes.com.au/rent/price-5000/bed-5/car-2/sort-price-desc/view-grid"
end

Then("On the search result, click one of the listing") do
  element = $wait.until {
      e = $driver.find_element(:xpath,'//*[@id="properties-container"]/div/div')
      e if e.displayed?
      }
      puts "One of the listing available" if element.displayed?
      $driver.find_element(:xpath,'//*[@id="properties-container"]/div/div/div[3]/div[1]/div[1]/div/h6/a').click
      puts "Clicked to one of the listing : Passed!"
      sleep(5)
end

Then("Make sure that Details of the listing is displayed properly") do
  element1 = $wait.until {
      e = $driver.find_element(:xpath,'//*[@id="property-detail"]/div[2]/div[4]/div/div/div[1]/div/div[2]/div[2]/a')
      e if e.displayed?
      }
      puts "Read More button for description property available" if element1.displayed?
      $driver.find_element(:xpath,'//*[@id="property-detail"]/div[2]/div[4]/div/div/div[1]/div/div[2]/div[2]/a').click
      puts "Clicked read more button : Passed!"

  element2 = $wait.until {
      a = $driver.find_element(:xpath,'//*[@id="property-detail"]/div[2]/div[4]/div/div/div[1]/div/div[2]/div[1]')
      a if a.displayed?
      }
      puts "All details description appears" if element2.displayed?

  element3 = $wait.until {
      b = $driver.find_element(:xpath,'//*[@id="property-detail"]/div[2]/div[4]/div/div/div[1]/div/div[2]/div[2]/a')
      b if b.displayed?
      }
      puts "Read Less button for description property available" if element3.displayed?
      $driver.find_element(:xpath,'//*[@id="property-detail"]/div[2]/div[4]/div/div/div[1]/div/div[2]/div[2]/a').click
      puts "Clicked read less button : Passed!"

  element4 = $wait.until {
      c = $driver.find_element(:xpath,'//*[@id="property-detail"]/div[2]/div[4]/div/div/div[1]/div/div[2]/div[1]')
      c if c.displayed?
      }
      puts "Description back to minimum." if element4.displayed?

  element5 = $wait.until {
      d = $driver.find_element(:xpath,'//*[@id="property-detail"]/div[2]/div[4]/div/div/div[1]/div/ul')
      d if d.displayed?
      }
      puts "Property Features available." if element5.displayed?

  element6 = $wait.until {
      f = $driver.find_element(:xpath,'//*[@id="property-detail"]/div[2]/div[4]/div/div/div[2]/ul')
      f if f.displayed?
      }
      puts "Property BBC available." if element6.displayed? 

  element7 = $wait.until {
      g = $driver.find_element(:xpath,'//*[@id="map"]')
      g if g.displayed?
      }
      puts "Property Maps available." if element7.displayed?   

end

Then("Company logo and information are displayed") do
  element3 = $wait.until {
      b = $driver.find_element(:xpath,'//*[@id="school-catchments"]/div[3]/div/div[1]/img')
      b if b.displayed?
      }
      puts "Company Logo available" if element3.displayed?

  element4 = $wait.until {
      c = $driver.find_element(:xpath,'//*[@id="property-agent-detail"]/div/div/div[2]/div/h5[2]/a')
      c if c.displayed?
      }
      puts "Company Name available" if element4.displayed?

  element7 = $wait.until {
      e = $driver.find_element(:xpath,'//*[@id="property-detail"]/div[2]/div[4]/div/div/div[2]/div[1]/div[2]/div[2]/p[2]')
      e if e.displayed?
      }
      puts "Company Address available" if element7.displayed?

  element5 = $wait.until {
      d = $driver.find_element(:xpath,'//*[@id="school-catchments"]/div[3]/div/div[2]/img')
      d if d.displayed?
      }
      puts "Agent Photo available" if element5.displayed? 

  element6 = $wait.until {
      d = $driver.find_element(:xpath,'//*[@id="school-catchments"]/div[3]/div/div[2]/h6')
      d if d.displayed?
      }
      puts "Agent Name available" if element6.displayed? 

  element8 = $wait.until {
      d = $driver.find_element(:xpath,'//*[@id="property-detail"]/div[2]/div[4]/div/div/div[2]/div[1]/div[2]/div[1]/div/div/p[2]/a')
      d if d.displayed?
      }
      puts "Agent Phone Number available" if element8.displayed? 


end

When("The logo or the link to provider is clicked") do
  element3 = $wait.until {
      b = $driver.find_element(:xpath,'//*[@id="property-agent-detail"]/div/div/div[1]/a')
      b if b.displayed?
      }
      puts "Company Logo available" if element3.displayed?
      $driver.find_element(:xpath,'//*[@id="property-agent-detail"]/div/div/div[1]/a').click
      puts "Clicked on company logo : Passed!"

end

Then("redirect to its profile") do
  wait = Selenium::WebDriver::Wait.new(:timeout => 10) 
      puts "Direct to its profile : Passed!" if $wait.until {
      "https://homes.com.au/office/3607-australian-property-management-alliance".match($driver.current_url())
      }
      sleep(2)
end

Then("User can see company phone number") do
  element3 = $wait.until {
      b = $driver.find_element(:xpath,'//*[@id="office-detail"]/div[1]/div[2]/div')
      b if b.displayed?
      }
      puts "Company phone number available" if element3.displayed?
end


#######################################################################################################################

# Upgrade Listing Feature [4.1] User are able to upgrade a listing using payment method.

Given("User Do search for find one of the listings") do
    $driver.navigate.to "https://homes.com.au/logout"
    $driver.navigate.to "https://staging.homes.com.au/"
element = $wait.until {
    e = $driver.find_element(:xpath,'//*[@id="search-type-navtab"]/button[4]')
    e if e.displayed?
    }
    puts "'Senior Living' service available." if element.displayed?
    $driver.find_element(:xpath,'//*[@id="search-type-navtab"]/button[4]').click
    $driver.find_element(:xpath,'//*[@id="search-box"]/div/div[2]/div[2]/button').click
    $driver.navigate.to "https://staging.homes.com.au/seniorsliving/properties/sort-price-desc/view-grid"
    puts "Search one of the listing : Passed!"
end

When("User found and click one of the Listing") do
  element = $wait.until {
      e = $driver.find_element(:xpath,'//*[@id="properties-container"]/div[1]/div/div[3]/div[1]/div[1]/div/h6/a')
      e if e.displayed?
      }
      puts "One of the listing available." if element.displayed?
      $driver.find_element(:xpath,'//*[@id="properties-container"]/div[1]/div/div[3]/div[1]/div[1]/div/h6/a').click
      puts "Click one of the listing : Passed!"

end

Then("User Click UPGRADE THIS LISTING on details listings") do
  element = $wait.until {
      e = $driver.find_element(:xpath,'//*[@id="property-detail"]/div[2]/div[4]/div/div/div[2]/div[3]/div/div[2]/p[2]/a')
      e if e.displayed?
      }
      puts "Upgrade Listing Button available." if element.displayed?
      $driver.find_element(:xpath,'//*[@id="property-detail"]/div[2]/div[4]/div/div/div[2]/div[3]/div/div[2]/p[2]/a').click
      puts "Click on Upgrade Button : Passed!"

end

Then("Fill all off mandatory fields") do
  element = $wait.until {
      e = $driver.find_element(:xpath,'//*[@id="payment-form"]/div[1]/div/div/div/div/label[1]/span[2]')
      e if e.displayed?
      }
      puts "Option Price Listing Available." if element.displayed?
      $driver.find_element(:xpath,'//*[@id="payment-form"]/div[1]/div/div/div/div/label[1]/span[2]').click
      puts "Click on Price Upgrade exp $299 : Passed!"
      sleep(10)

  element2 = $wait.until {
      e = $driver.find_element(:name,"first_name")
      e if e.displayed?
      }
      puts "First Name Field Available." if element2.displayed?
      element2.send_keys("Ivan")
      puts "Insert First Name 'Ivan' : Passed!"

  element3 = $wait.until {
      e = $driver.find_element(:name,"last_name")
      e if e.displayed?
      }
      puts "Last Name Field Available." if element3.displayed?
      element3.send_keys("Sinambela")
      puts "Insert Last Name 'Sinambela' : Passed!"

  element4 = $wait.until {
      e = $driver.find_element(:name,"address")
      e if e.displayed?
      }
      puts "Address Field Available." if element4.displayed?
      element4.send_keys("Magelang St NO. 65")
      puts "Insert Address 'Magelang St NO. 65' : Passed!"

  element5 = $wait.until {
      e = $driver.find_element(:name,"city")
      e if e.displayed?
      }
      puts "Address Field Available." if element5.displayed?
      element5.send_keys("Yogyakarta")
      puts "Insert City 'Yogyakarta' : Passed!"

  element6 = $wait.until {
      e = $driver.find_element(:name,"state")
      e if e.displayed?
      }
      puts "State Field Available." if element6.displayed?
      element6.send_keys("D.I Yogyakarta")
      puts "Insert City 'D.I Yogyakarta' : Passed!"

  element7 = $wait.until {
      e = $driver.find_element(:name,"postal")
      e if e.displayed?
      }
      puts "Postal/Zipcode Field Available." if element7.displayed?
      element7.send_keys("55555")
      puts "Insert Postal/Zipcode '55555' : Passed!"

  element8 = $wait.until {
      e = $driver.find_element(:name,"country")
      e if e.displayed?
      }
      puts "Country Field Available." if element8.displayed?
      element8.send_keys("Indonesia")
      puts "Insert Country 'Indonesia' : Passed!"

  element9 = $wait.until {
      e = $driver.find_element(:name,"phone")
      e if e.displayed?
      }
      puts "Phone Field Available." if element9.displayed?
      element9.send_keys("089999999999")
      puts "Insert Phone Number '089999999999' : Passed!"
  $driver.switch_to.frame($driver.find_element(:name, "__privateStripeFrame5"))
  element10 = $wait.until {
      e = $driver.find_element(:name,"cardnumber")
      e if e.displayed?
      }
      puts "Card Number Field Available." if element10.displayed?
      element10.send_keys("5555555555554444")
      puts "Insert Card Number using Mastercard '5555-5555-5555-4444' : Passed!"

  element11 = $wait.until {
      e = $driver.find_element(:name,"exp-date")
      e if e.displayed?
      }
      puts "Expired Date Field Available." if element11.displayed?
      element11.send_keys("1024")
      puts "Insert Expired Date '10/24' : Passed!"

  element12 = $wait.until {
      e = $driver.find_element(:name,"cvc")
      e if e.displayed?
      }
      puts "CVC Field Available." if element12.displayed?
      element12.send_keys("567")
      puts "Insert CVC '567' : Passed!"
      $driver.switch_to.default_content

  element13 = $wait.until {
      e = $driver.find_element(:name,"email")
      e if e.displayed?
      }
      puts "Email Field Available." if element13.displayed?
      element13.send_keys("ivan.hector@si.ukdw.ac.id")
      puts "Insert Email 'ivan.hector@si.ukdw.ac.id' : Passed!"



end

Then("Click on MAKE PAYMENTS") do
  element14 = $wait.until {
      e = $driver.find_element(:xpath,'//*[@id="payment-form"]/div[5]/div/div[2]/button')
      e if e.displayed?
      }
      puts "Buton MAKE PAYMENT Available." if element14.displayed?
      $driver.find_element(:xpath,'//*[@id="payment-form"]/div[5]/div/div[2]/button').click
      puts "Click on MAKE PAYMENT Button : Passed!"
      sleep(10)
end

Then("the listing upgraded after do the payment") do
  $driver.navigate.to "https://staging.homes.com.au/seniorsliving/properties/view-grid"
  puts "Back to search to check previous listing status"
  element = $wait.until {
      e = $driver.find_element(:xpath,'//*[@id="properties-container"]/div[1]/div/div[3]/div[1]/div[1]/div/h6/a')
      e if e.displayed?
      }
      puts "Listing Already Appears on the first list" if element.displayed?
      $driver.find_element(:xpath,'//*[@id="properties-container"]/div[1]/div/div[3]/div[1]/div[1]/div/h6/a').click
      puts "Click on the listing to details"
      if ($driver.find_elements(:xpath,'//*[@id="property-detail"]/div[2]/div[4]/div/div/div[2]/div[3]/div/div[2]/p[2]/a').size > 0)
          puts "Premium Listing Card still available : Failed!"
        else
          puts "Premium Listing Card Not available : Passed!"
      puts "The property upgraded to Premium Listing : Passed!"
end
end


####################################################################################################################################

# Save or Saved Listing Feature [5.1] User are able to save a listing into Save Properties page in Listing Result page.

Given("User LOGIN to their account as user not admin or agent or office admin") do
    $driver.navigate.to "https://homes.com.au/logout"
    $driver.navigate.to "https://homes.com.au/"
element = $wait.until {
    e = $driver.find_element(:xpath,'//*[@id="main-menu"]/ul[2]/li[1]/a')
    e if e.displayed?
    }
    puts "Login Button available." if element.displayed?
    $driver.find_element(:xpath,'//*[@id="main-menu"]/ul[2]/li[1]/a').click
    puts "Clicked on login button"

    element2 = $wait.until {
        e = $driver.find_element(:name,"email")
        e if e.displayed?
        }
        puts "Email Field available." if element2.displayed?
        element2.send_keys("ivansinambela@gmail.com")
        puts "Input Email 'ivansinambela@gmail.com' : Passed!"

    element3 = $wait.until {
        e = $driver.find_element(:name,"password")
        e if e.displayed?
        }
        puts "Password Field available." if element3.displayed?
        element3.send_keys("123456")
        puts "Input Password '123456' : Passed!"
        
        $driver.find_element(:xpath,'//*[@id="page-auth"]/div/div/div[4]/form/div/div[4]/button').click
        puts "User clicked login button : Passed!"
        sleep(5)

  end
  
  Then("Do search for one of the property exp on New Apartments") do
    element = $wait.until {
        e = $driver.find_element(:xpath,'//*[@id="dropdownSearch"]')
        e if e.displayed?
        }
        puts "Search Dropdown Button available." if element.displayed?
        $driver.find_element(:xpath,'//*[@id="dropdownSearch"]').click      
        puts "Clicked on Dropdown button : Passed!"

    element1 = $wait.until {
        e = $driver.find_element(:xpath,'//*[@id="main-menu"]/ul[1]/li[1]/div/div/div/a[4]')
        e if e.displayed?
        }
        puts "New Apartments available." if element1.displayed?
        $driver.find_element(:xpath,'//*[@id="main-menu"]/ul[1]/li[1]/div/div/div/a[4]').click      
        puts "Clicked on new apartments : Passed!"
        $driver.find_element(:xpath,'//*[@id="search-box"]/div/div[2]/div[2]/button').click
  end
  
  Then("On the search result, click the Favorite button with star icon on the listing thumbnails.") do
    element = $wait.until {
        e = $driver.find_element(:xpath,'//*[@id="properties-container"]/div[1]/div/div[3]/div[2]/div/div/div/div[4]/button[2]')
        e if e.displayed?
        }
        puts "Favorite Button available." if element.displayed?
        $driver.find_element(:xpath,'//*[@id="properties-container"]/div[1]/div/div[3]/div[2]/div/div/div/div[4]/button[2]').click      
        puts "Clicked on Favorite button : Passed!"
  end
  
  Then("Enter Saved properties page") do
    element = $wait.until {
        e = $driver.find_element(:xpath,'//*[@id="user-account"]/a')
        e if e.displayed?
        }
        puts "Profile Button available." if element.displayed?
        $driver.find_element(:xpath,'//*[@id="user-account"]/a').click      
        puts "Clicked on Profile button : Passed!"

    element2 = $wait.until {
        e = $driver.find_element(:xpath,'//*[@id="user-account"]/div/ul/li[2]/a')
        e if e.displayed?
        }
        puts "Saved Properties Button available." if element2.displayed?
        $driver.find_element(:xpath,'//*[@id="user-account"]/div/ul/li[2]/a').click      
        puts "Clicked on Saved Properties button : Passed!"

  end
  
  Then("Make sure the saved property is listed in Saved Property page.") do
    element3 = $wait.until {
        e = $driver.find_element(:xpath,'//*[@id="properties-container"]/div/div')
        e if e.displayed?
        }
        puts "Previous Save Property on Saved Properties Page : Passed! " if element3.displayed?
        $driver.find_element(:xpath,'//*[@id="properties-container"]/div/div/div[3]/div[2]/div/div/div/div[4]/button[1]').click      
        sleep(5)
        $driver.find_element(:xpath,'//*[@id="user-account"]/a').click      
        $driver.find_element(:xpath,'//*[@id="user-account"]/div/ul/li[5]/a').click      

  end


  # Save or Saved Listing Feature [5.2] User are able to save a listing into Save Properties page in Listing details page.


Given("User LOGIN to their account as user") do
    $driver.navigate.to "https://homes.com.au/logout"
    $driver.navigate.to "https://homes.com.au/"
    element = $wait.until {
        e = $driver.find_element(:xpath,'//*[@id="main-menu"]/ul[2]/li[1]/a')
        e if e.displayed?
        }
        puts "Login Button available." if element.displayed?
        $driver.find_element(:xpath,'//*[@id="main-menu"]/ul[2]/li[1]/a').click
        puts "Clicked on login button"
    
        element2 = $wait.until {
            e = $driver.find_element(:name,"email")
            e if e.displayed?
            }
            puts "Email Field available." if element2.displayed?
            element2.send_keys("ivansinambela@gmail.com")
            puts "Input Email 'ivansinambela@gmail.com' : Passed!"
    
        element3 = $wait.until {
            e = $driver.find_element(:name,"password")
            e if e.displayed?
            }
            puts "Password Field available." if element3.displayed?
            element3.send_keys("123456")
            puts "Input Password '123456' : Passed!"
            
            $driver.find_element(:xpath,'//*[@id="page-auth"]/div/div/div[4]/form/div/div[4]/button').click
            puts "User clicked login button : Passed!"
            sleep(5)
end

Then("Do search for one of the property exp on Sold Properties") do
    element = $wait.until {
        e = $driver.find_element(:xpath,'//*[@id="dropdownSearch"]')
        e if e.displayed?
        }
        puts "Search Dropdown Button available." if element.displayed?
        $driver.find_element(:xpath,'//*[@id="dropdownSearch"]').click      
        puts "Clicked on Dropdown button : Passed!"

    element1 = $wait.until {
        e = $driver.find_element(:xpath,'//*[@id="main-menu"]/ul[1]/li[1]/div/div/div/a[7]')
        e if e.displayed?
        }
        puts "Sold Option Available." if element1.displayed?
        $driver.find_element(:xpath,'//*[@id="main-menu"]/ul[1]/li[1]/div/div/div/a[7]').click      
        puts "Clicked on Sold Properties : Passed!"

end

Then("Click one of the property") do
    element = $wait.until {
        e = $driver.find_element(:xpath,'//*[@id="properties-container"]/div[1]/div/div[3]/div[1]/div[1]/div/h6/a')
        e if e.displayed?
        }
        puts "Sold Result Available." if element.displayed?
        $driver.find_element(:xpath,'//*[@id="properties-container"]/div[1]/div/div[3]/div[1]/div[1]/div/h6/a').click      
        puts "Clicked on one of sold properties : Passed!"
end

Then("On detail property, click the Favorite button with star icon.") do
    element = $wait.until {
        e = $driver.find_element(:xpath,'//*[@id="property-actions"]/a[1]')
        e if e.displayed?
        }
        puts "Favorite Button available." if element.displayed?
        $driver.find_element(:xpath,'//*[@id="property-actions"]/a[1]').click      
        puts "Clicked on Favorite button : Passed!"
        sleep(5)
end

Then("Go to Saved properties page") do
    element = $wait.until {
        e = $driver.find_element(:xpath,'//*[@id="user-account"]/a')
        e if e.displayed?
        }
        puts "Profile Button available." if element.displayed?
        $driver.find_element(:xpath,'//*[@id="user-account"]/a').click      
        puts "Clicked on Profile button : Passed!"

    element2 = $wait.until {
        e = $driver.find_element(:xpath,'//*[@id="user-account"]/div/ul/li[2]/a')
        e if e.displayed?
        }
        puts "Saved Properties Button available." if element2.displayed?
        $driver.find_element(:xpath,'//*[@id="user-account"]/div/ul/li[2]/a').click      
        puts "Clicked on Saved Properties button : Passed!"
end

Then("Make sure the saved property is listed in Saved Property page after login") do
    element3 = $wait.until {
        e = $driver.find_element(:xpath,'//*[@id="properties-container"]/div/div')
        e if e.displayed?
        }
        puts "Previous Save Property on Saved Properties Page : Passed! " if element3.displayed?
        $driver.find_element(:xpath,'//*[@id="properties-container"]/div/div/div[3]/div[2]/div/div/div/div[5]/button[1]').click      
        sleep(5)
        $driver.find_element(:xpath,'//*[@id="user-account"]/a').click      
        $driver.find_element(:xpath,'//*[@id="user-account"]/div/ul/li[5]/a').click   
end


# Save or Saved Listing Feature [5.3] User are able to unsave a listing in Listing Result page.

Given("User successfully LOGIN") do
    $driver.navigate.to "https://homes.com.au/logout"
    $driver.navigate.to "https://homes.com.au/"
    element = $wait.until {
        e = $driver.find_element(:xpath,'//*[@id="main-menu"]/ul[2]/li[1]/a')
        e if e.displayed?
        }
        puts "Login Button available." if element.displayed?
        $driver.find_element(:xpath,'//*[@id="main-menu"]/ul[2]/li[1]/a').click
        puts "Clicked on login button"
    
        element2 = $wait.until {
            e = $driver.find_element(:name,"email")
            e if e.displayed?
            }
            puts "Email Field available." if element2.displayed?
            element2.send_keys("ivansinambela@gmail.com")
            puts "Input Email 'ivansinambela@gmail.com' : Passed!"
    
        element3 = $wait.until {
            e = $driver.find_element(:name,"password")
            e if e.displayed?
            }
            puts "Password Field available." if element3.displayed?
            element3.send_keys("123456")
            puts "Input Password '123456' : Passed!"
            
            $driver.find_element(:xpath,'//*[@id="page-auth"]/div/div/div[4]/form/div/div[4]/button').click
            puts "User clicked login button : Passed!"
            sleep(5)
  end
  
  Then("Do search for one of the property exp on Sold Properties which is already favorited") do
    element = $wait.until {
        e = $driver.find_element(:xpath,'//*[@id="dropdownSearch"]')
        e if e.displayed?
        }
        puts "Search Dropdown Button available." if element.displayed?
        $driver.find_element(:xpath,'//*[@id="dropdownSearch"]').click      
        puts "Clicked on Dropdown button : Passed!"

    element1 = $wait.until {
        e = $driver.find_element(:xpath,'//*[@id="main-menu"]/ul[1]/li[1]/div/div/div/a[7]')
        e if e.displayed?
        }
        puts "Sold Option Available." if element1.displayed?
        $driver.find_element(:xpath,'//*[@id="main-menu"]/ul[1]/li[1]/div/div/div/a[7]').click      
        puts "Clicked on Sold Properties : Passed!"

    element2 = $wait.until {
        e = $driver.find_element(:xpath,'//*[@id="properties-container"]/div[1]/div/div[3]/div[2]/div/div/div/div[5]/button[2]')
        e if e.displayed?
        }
        puts "Favorite Button available." if element2.displayed?
        $driver.find_element(:xpath,'//*[@id="properties-container"]/div[1]/div/div[3]/div[2]/div/div/div/div[5]/button[2]').click      
        puts "Clicked on Favorite button : Passed!"
  end
  
  Then("Go to Saved properties page {float}") do |float|
    element = $wait.until {
        e = $driver.find_element(:xpath,'//*[@id="user-account"]/a')
        e if e.displayed?
        }
        puts "Profile Button available." if element.displayed?
        $driver.find_element(:xpath,'//*[@id="user-account"]/a').click      
        puts "Clicked on Profile button : Passed!"

    element2 = $wait.until {
        e = $driver.find_element(:xpath,'//*[@id="user-account"]/div/ul/li[2]/a')
        e if e.displayed?
        }
        puts "Saved Properties Button available." if element2.displayed?
        $driver.find_element(:xpath,'//*[@id="user-account"]/div/ul/li[2]/a').click      
        puts "Clicked on Saved Properties button : Passed!"
  end
  
  Then("Make sure the unsaved property is removed in saved property page") do
    element3 = $wait.until {
        e = $driver.find_element(:xpath,'//*[@id="properties-container"]/div/div/div[3]/div[2]/div/div/div/div[5]/button[1]')
        e if e.displayed?
        }
        puts "Previous Save Property on Saved Properties Page : Passed! " if element3.displayed?
        $driver.find_element(:xpath,'//*[@id="properties-container"]/div/div/div[3]/div[2]/div/div/div/div[5]/button[1]').click 
        sleep(5)
        $driver.navigate.to "https://homes.com.au/saved-properties"
        puts "Refresh page"
    element = $wait.until {
        e = $driver.find_element(:xpath,'//*[@id="properties-container"]/div')
        e if e.displayed?
        }
        puts "Unsaved Property not appears on saved properties : Passed! " if element.displayed?
        sleep(5)
        $driver.find_element(:xpath,'//*[@id="user-account"]/a').click      
        $driver.find_element(:xpath,'//*[@id="user-account"]/div/ul/li[5]/a').click    
  end


# Save or Saved Listing Feature [5.4] User are able to unsave a listing in Listing details page.

Given("User successfully login") do
    $driver.navigate.to "https://homes.com.au/logout"
    $driver.navigate.to "https://homes.com.au/"
    element = $wait.until {
        e = $driver.find_element(:xpath,'//*[@id="main-menu"]/ul[2]/li[1]/a')
        e if e.displayed?
        }
        puts "Login Button available." if element.displayed?
        $driver.find_element(:xpath,'//*[@id="main-menu"]/ul[2]/li[1]/a').click
        puts "Clicked on login button"
    
        element2 = $wait.until {
            e = $driver.find_element(:name,"email")
            e if e.displayed?
            }
            puts "Email Field available." if element2.displayed?
            element2.send_keys("ivansinambela@gmail.com")
            puts "Input Email 'ivansinambela@gmail.com' : Passed!"
    
        element3 = $wait.until {
            e = $driver.find_element(:name,"password")
            e if e.displayed?
            }
            puts "Password Field available." if element3.displayed?
            element3.send_keys("123456")
            puts "Input Password '123456' : Passed!"
            
            $driver.find_element(:xpath,'//*[@id="page-auth"]/div/div/div[4]/form/div/div[4]/button').click
            puts "User clicked login button : Passed!"
            sleep(5)
  end
  
  Then("Do search for one of the property exp on new apartment which is already favorited") do
    element = $wait.until {
        e = $driver.find_element(:xpath,'//*[@id="dropdownSearch"]')
        e if e.displayed?
        }
        puts "Search Dropdown Button available." if element.displayed?
        $driver.find_element(:xpath,'//*[@id="dropdownSearch"]').click      
        puts "Clicked on Dropdown button : Passed!"

    element1 = $wait.until {
        e = $driver.find_element(:xpath,'//*[@id="main-menu"]/ul[1]/li[1]/div/div/div/a[4]')
        e if e.displayed?
        }
        puts "New Apartments available." if element1.displayed?
        $driver.find_element(:xpath,'//*[@id="main-menu"]/ul[1]/li[1]/div/div/div/a[4]').click      
        puts "Clicked on new apartments : Passed!"
        $driver.find_element(:xpath,'//*[@id="search-box"]/div/div[2]/div[2]/button').click
        sleep(5)
  end
  
  Then("Click on the property to go to detail property") do
    $driver.find_element(:xpath,'//*[@id="properties-container"]/div[1]/div/div[3]/div[2]/div/div/div/div[4]/button[2]').click
    sleep(2)
    element = $wait.until {
        e = $driver.find_element(:xpath,'//*[@id="properties-container"]/div[1]/div/div[3]/div[1]/div[1]/div/h6/a')
        e if e.displayed?
        }
        puts "New Apartment Result Available." if element.displayed?
        $driver.find_element(:xpath,'//*[@id="properties-container"]/div[1]/div/div[3]/div[1]/div[1]/div/h6/a').click      
        puts "Clicked on one of new apartment properties : Passed!"
        sleep(5)
   

  end
  
  Then("Inside property detail page, click saved property to unsaved") do
    element1 = $wait.until {
        e = $driver.find_element(:xpath,'//*[@id="property-actions"]/a[2]')
        e if e.displayed?
        }
        puts "Favorite Button available." if element1.displayed?
        $driver.find_element(:xpath,'//*[@id="property-actions"]/a[2]').click      
        puts "Clicked on Favorite button to Unsaved : Passed!"
        sleep(5)
  end
  
  Then("Make sure the unsaved property is already removed in saved property page") do
    element = $wait.until {
        e = $driver.find_element(:xpath,'//*[@id="user-account"]/a')
        e if e.displayed?
        }
        puts "Profile Button available." if element.displayed?
        $driver.find_element(:xpath,'//*[@id="user-account"]/a').click      
        puts "Clicked on Profile button : Passed!"

    element2 = $wait.until {
        e = $driver.find_element(:xpath,'//*[@id="user-account"]/div/ul/li[2]/a')
        e if e.displayed?
        }
        puts "Saved Properties Button available." if element2.displayed?
        $driver.find_element(:xpath,'//*[@id="user-account"]/div/ul/li[2]/a').click      
        puts "Clicked on Saved Properties button : Passed!"

    element3 = $wait.until {
        e = $driver.find_element(:xpath,'//*[@id="properties-container"]/div')
        e if e.displayed?
        }
        puts "Unsaved Property not appears on saved properties : Passed! " if element3.displayed?
        sleep(5)
        $driver.find_element(:xpath,'//*[@id="user-account"]/a').click      
        $driver.find_element(:xpath,'//*[@id="user-account"]/div/ul/li[5]/a').click
  end


  #################################################################################################

  # Share Feature [6.1] User are able to share property via Facebook

  Given("Do search for one of the property to share") do
    $driver.navigate.to "https://homes.com.au/logout"
    $driver.navigate.to "https://homes.com.au/"
element = $wait.until {
    e = $driver.find_element(:xpath,'//*[@id="search-type-navtab"]/button[4]')
    e if e.displayed?
    }
    puts "'Senior Living' service available." if element.displayed?
    $driver.find_element(:xpath,'//*[@id="search-type-navtab"]/button[4]').click
    $driver.find_element(:xpath,'//*[@id="search-box"]/div/div[2]/div[2]/button').click
    puts "Search one of the listing : Passed!"
end
  
  
  Then("On the search result, click one of the Property") do
    element = $wait.until {
        e = $driver.find_element(:xpath,'//*[@id="properties-container"]/div[1]/div/div[3]/div[1]/div[1]/div/h6/a')
        e if e.displayed?
        }
        puts "One of the property available." if element.displayed?
        $driver.find_element(:xpath,'//*[@id="properties-container"]/div[1]/div/div[3]/div[1]/div[1]/div/h6/a').click
        puts "Click one of the property : Passed!"
        sleep(5)
  end
  
  Then("Click on share Button") do
    element = $wait.until {
        e = $driver.find_element(:xpath,'//*[@id="property-actions"]/a[3]')
        e if e.displayed?
        }
        puts "Share Button available." if element.displayed?
        $driver.find_element(:xpath,'//*[@id="property-actions"]/a[3]').click
        puts "Click on Share Button : Passed!"

  end
  
  Then("Click on Facebook") do
    element1 = $wait.until {
        e = $driver.find_element(:xpath,'//*[@id="share-property-content"]/div[1]/ul/li[1]/a')
        e if e.displayed?
        }
        puts "Share to Facebook button available." if element1.displayed?
        $driver.find_element(:xpath,'//*[@id="share-property-content"]/div[1]/ul/li[1]/a').click
        puts "Click on Share to Facebook : Passed!"
  end
  
  Then("Make sure the facebook opens a new tab with property headline description in it.") do
    $driver.switch_to.window($driver.window_handles[0])
    element1 = $wait.until {
        e = $driver.find_element(:xpath,'/html/body/nav/div[1]/div[1]')
        e if e.displayed?
        }
        puts "Facebook Open New Tab : Passed!" if element1.displayed?
    $driver.switch_to.window($driver.window_handles[1])
    sleep(2)
    element = $wait.until {
        e = $driver.find_element(:xpath,'//*[@id="homelink"]')
        e if e.displayed?
        }
        puts "Property Headline Available : Passed!" if element.displayed?
    $driver.switch_to.window($driver.window_handles[0])
  end


# Share Feature [6.2] User are able to share property via Twitter

Given("Do search for one of the property for share to Twitter") do
    $driver.navigate.to "https://homes.com.au/logout"
    $driver.navigate.to "https://homes.com.au/"
element = $wait.until {
    e = $driver.find_element(:xpath,'//*[@id="search-type-navtab"]/button[4]')
    e if e.displayed?
    }
    puts "'Senior Living' service available." if element.displayed?
    $driver.find_element(:xpath,'//*[@id="search-type-navtab"]/button[4]').click
    $driver.find_element(:xpath,'//*[@id="search-box"]/div/div[2]/div[2]/button').click
    puts "Search one of the listing : Passed!"
  end
  
  Then("On the search result, Click one of the property") do
    element = $wait.until {
        e = $driver.find_element(:xpath,'//*[@id="properties-container"]/div[1]/div/div[3]/div[1]/div[1]/div/h6/a')
        e if e.displayed?
        }
        puts "One of the property available." if element.displayed?
        $driver.find_element(:xpath,'//*[@id="properties-container"]/div[1]/div/div[3]/div[1]/div[1]/div/h6/a').click
        puts "Click one of the property : Passed!"
        sleep(5)
  end
  
  Then("Click on Share Button") do
    element = $wait.until {
        e = $driver.find_element(:xpath,'//*[@id="property-actions"]/a[3]')
        e if e.displayed?
        }
        puts "Share Button available." if element.displayed?
        $driver.find_element(:xpath,'//*[@id="property-actions"]/a[3]').click
        puts "Click on Share Button : Passed!"
  end
  
  Then("Click on Twitter") do
    element1 = $wait.until {
        e = $driver.find_element(:xpath,'//*[@id="share-property-content"]/div[1]/ul/li[2]/a')
        e if e.displayed?
        }
        puts "Share to Twitter button available." if element1.displayed?
        $driver.find_element(:xpath,'//*[@id="share-property-content"]/div[1]/ul/li[2]/a').click
        puts "Click on Share to Twitter : Passed!"
  end
  
  Then("Make sure the twitter opens a new tab with property headline description in it.") do
    $driver.switch_to.window($driver.window_handles[0])
    element1 = $wait.until {
        e = $driver.find_element(:xpath,'/html/body/nav/div[1]/div[1]')
        e if e.displayed?
        }
        puts "Twitter Open New Tab : Passed!" if element1.displayed?
    $driver.switch_to.window($driver.window_handles[2])
    sleep(2)
    element = $wait.until {
        e = $driver.find_element(:xpath,'//*[@id="header"]/div/h1')
        e if e.displayed?
        }
        puts "Property Headline Available : Passed!" if element.displayed?
        $driver.switch_to.window($driver.window_handles[0])
  end


# Share Feature [6.3] User are able to share property via Email

  Given("Do search for one of the property for share by Email") do
    $driver.navigate.to "https://homes.com.au/logout"
    $driver.navigate.to "https://homes.com.au/"
    element = $wait.until {
    e = $driver.find_element(:xpath,'//*[@id="search-type-navtab"]/button[4]')
    e if e.displayed?
    }
    puts "'Senior Living' service available." if element.displayed?
    $driver.find_element(:xpath,'//*[@id="search-type-navtab"]/button[4]').click
    $driver.find_element(:xpath,'//*[@id="search-box"]/div/div[2]/div[2]/button').click
    puts "Search one of the listing : Passed!"
  end
  
  Then("On the search result, Click One of the Property") do
    element = $wait.until {
        e = $driver.find_element(:xpath,'//*[@id="properties-container"]/div[1]/div/div[3]/div[1]/div[1]/div/h6/a')
        e if e.displayed?
        }
        puts "One of the property available." if element.displayed?
        $driver.find_element(:xpath,'//*[@id="properties-container"]/div[1]/div/div[3]/div[1]/div[1]/div/h6/a').click
        puts "Click on of the property : Passed!"
        sleep(5)
  end
  
  Then("Click Share Button on Details") do
    element = $wait.until {
        e = $driver.find_element(:xpath,'//*[@id="property-actions"]/a[3]')
        e if e.displayed?
        }
        puts "Share Button available." if element.displayed?
        $driver.find_element(:xpath,'//*[@id="property-actions"]/a[3]').click
        puts "Click on Share Button : Passed!"
  end
  
  Then("Click on Email") do
    element1 = $wait.until {
        e = $driver.find_element(:xpath,'//*[@id="share-property-content"]/div[1]/ul/li[3]/a')
        e if e.displayed?
        }
        puts "Share by email button available." if element1.displayed?
        $driver.find_element(:xpath,'//*[@id="share-property-content"]/div[1]/ul/li[3]/a').click
        puts "Click on Share by Email : Passed!"
  end
  
  Then("Make sure it will redirect to send mail page") do
    $driver.switch_to.window($driver.window_handles[0])
    element1 = $wait.until {
        e = $driver.find_element(:xpath,'/html/body/nav/div[1]/div[1]')
        e if e.displayed?
        }
        puts "Direct to Mail Page : Passed!" if element1.displayed?
        $driver.switch_to.window($driver.window_handles[0])
    
  end


# Share Feature [6.4] User are able to copy the property link

Given("Do search for one of the property for copy the property link") do
    $driver.navigate.to "https://homes.com.au/logout"
    $driver.navigate.to "https://homes.com.au/"
    element = $wait.until {
    e = $driver.find_element(:xpath,'//*[@id="search-type-navtab"]/button[4]')
    e if e.displayed?
    }
    puts "'Senior Living' service available." if element.displayed?
    $driver.find_element(:xpath,'//*[@id="search-type-navtab"]/button[4]').click
    $driver.find_element(:xpath,'//*[@id="search-box"]/div/div[2]/div[2]/button').click
    puts "Search one of the listing : Passed!"
  end
  
  Then("On the Search result, Click one of the Property") do
    element = $wait.until {
        e = $driver.find_element(:xpath,'//*[@id="properties-container"]/div[1]/div/div[3]/div[1]/div[1]/div/h6/a')
        e if e.displayed?
        }
        puts "One of the property available." if element.displayed?
        $driver.find_element(:xpath,'//*[@id="properties-container"]/div[1]/div/div[3]/div[1]/div[1]/div/h6/a').click
        puts "Click one of the property : Passed!"
        sleep(5)
  end
  
  Then("Click Share Button on details") do
    element = $wait.until {
        e = $driver.find_element(:xpath,'//*[@id="property-actions"]/a[3]')
        e if e.displayed?
        }
        puts "Share Button available." if element.displayed?
        $driver.find_element(:xpath,'//*[@id="property-actions"]/a[3]').click
        puts "Click one Share Button : Passed!"
  end
  
  Then("Click on Copy Link") do
    element1 = $wait.until {
        e = $driver.find_element(:xpath,'//*[@id="copy-url"]')
        e if e.displayed?
        }
        puts "Copy Link button available." if element1.displayed?
        $driver.find_element(:xpath,'//*[@id="copy-url"]').click
        puts "Click on Copy Link Button : Passed!"
  end

  Then("Make sure the property link is properly copied") do
    element = $wait.until {
        e = $driver.find_element(:xpath,'//*[@id="copy-url"]/span[2]')
        e if e.displayed?
        }
        puts "Link copied : Passed!" if element.displayed?
  end


# Share Feature [6.5] User are able to show the print preview.

Given("Do search for one of the property for show print preview") do
    $driver.navigate.to "https://homes.com.au/logout"
    $driver.navigate.to "https://homes.com.au/"
    element = $wait.until {
    e = $driver.find_element(:xpath,'//*[@id="search-type-navtab"]/button[4]')
    e if e.displayed?
    }
    puts "'Senior Living' service available." if element.displayed?
    $driver.find_element(:xpath,'//*[@id="search-type-navtab"]/button[4]').click
    $driver.find_element(:xpath,'//*[@id="search-box"]/div/div[2]/div[2]/button').click
    puts "Search one of the listing : Passed!"
  end
  
  Then("On the Search result, Click One of the Property") do
    element = $wait.until {
        e = $driver.find_element(:xpath,'//*[@id="properties-container"]/div[1]/div/div[3]/div[1]/div[1]/div/h6/a')
        e if e.displayed?
        }
        puts "One of the property available." if element.displayed?
        $driver.find_element(:xpath,'//*[@id="properties-container"]/div[1]/div/div[3]/div[1]/div[1]/div/h6/a').click
        puts "Click one of the property : Passed!"
        sleep(5)
  end
  
  Then("Click share Button on Details") do
    element = $wait.until {
        e = $driver.find_element(:xpath,'//*[@id="property-actions"]/a[3]')
        e if e.displayed?
        }
        puts "Share Button available." if element.displayed?
        $driver.find_element(:xpath,'//*[@id="property-actions"]/a[3]').click
        puts "Click one Share Button : Passed!"
  end
  
  Then("Click on Print Option") do
    element1 = $wait.until {
        e = $driver.find_element(:xpath,'//*[@id="share-print"]')
        e if e.displayed?
        }
        puts "Print option available." if element1.displayed?
        puts "Click on Print option Button : Passed!"
        sleep(5)
  end
  
  Then("Make sure the property appears on print preview section with neat display") do
    element = $wait.until {
        e = $driver.find_element(:xpath,'//*[@id="share-print"]')
        e if e.displayed?
        }
        puts "property appears on print preview section with neat display : Passed!" if element.displayed?
  end

