wait = Selenium::WebDriver::Wait.new(:timeout => 5)


# Register Feature [1.4] User able to register their account into the site using https:/homes.com.au/register

When("user clicked Join button") do
    $driver.navigate.to "https://www.homes.com.au/"
    sleep(5)
    $driver.find_element(:xpath,'/html/body/nav/div[1]/div[2]/div[1]/ul[2]/li[3]/a').click
    puts "Clicked Join Button : Passed!"

end

Then("user directed to Join Page") do
    Join_page = wait.until {
      element = $driver.find_element(:xpath,'/html/body/div/div/div/div[4]/form/div/div[6]/button')
      element if element.displayed?
    }
    puts "Direct to Join Page : Passed!" if Join_page.displayed?  
    
end

Then("user enter first and last name, email, password and confirm password") do
  first_name = wait.until {
    element = $driver.find_element(:name,"first_name")
    element if element.displayed?
  }
  first_name.send_keys("just")
  puts "Input First Name : Passed!" if first_name.displayed?

  last_name = wait.until {
    element = $driver.find_element(:name,"last_name")
    element if element.displayed?
  }
  last_name.send_keys("testing")
  puts "Input Last Name : Passed!" if last_name.displayed?

  email = wait.until {
    element = $driver.find_element(:name,"email")
    element if element.displayed?
  }
  email.send_keys("justtesting2sds1da@abcd.com")
  puts "Input Email : Passed!" if email.displayed?

  password = wait.until {
    element = $driver.find_element(:name,"password")
    element if element.displayed?
  }
  password.send_keys("123456Ivan")
  puts "Input Password : Passed!" if password.displayed?
  
  passwordconf = wait.until {
    element = $driver.find_element(:name,"password_confirmation")
    element if element.displayed?
  }
  passwordconf.send_keys("123456Ivan")
  puts "Input Password Confirmation : Passed!" if passwordconf.displayed?

  sleep(5)
  end

Then("user clicked signup button") do
    element = $driver.find_element(:xpath,'/html/body/div/div/div/div[4]/form/div/div[6]/button').click
    puts "Clicked signup button : Passed!"
end

Then("user directed to landingpage") do
  
    $driver.navigate.to "https://www.homes.com.au/logout"
  
end


# Login Feature [1.1] User able to login into the site using https://homes.com.au/login


When("user clicked Log in button") do
  $driver.navigate.to "https://homes.com.au/"
  $driver.find_element(:xpath,'/html/body/nav/div[1]/div[2]/div[1]/ul[2]/li[1]/a').click
  puts "Clicked login button : Passed!"
  sleep(2)
end

Then("user directed to Login \/ Join Page") do
  directed_user = wait.until {
    element = $driver.find_element(:xpath,'/html/body/div/div/div/div[4]/form/div/div[4]/button')
    element if element.displayed?
  }

  puts "User Directed to login page : Passed!" if directed_user.displayed?
  
end

Then("user enter the email and password") do
  email = wait.until {
    element = $driver.find_element(:name,"email")
    element if element.displayed?
  }
  email.send_keys("ivansinambela@gmail.com")
  puts "Input Email : Passed!" if email.displayed?

  password = wait.until {
    element = $driver.find_element(:name,"password")
    element if element.displayed?
  }
  password.send_keys("123456")
  puts "Input Password : Passed!" if password.displayed?
  
  sleep(5)
end

Then("user clicked login button") do
  $driver.find_element(:xpath,'/html/body/div/div/div/div[4]/form/div/div[4]/button').click
  puts "User clicked login button : Passed!"
  sleep(5)
end

Then("user directed to landing page") do
  sleep(5)
  if ($driver.find_elements(:xpath,'/html/body/nav/div[1]/div[2]/div[1]/ul[2]/li[1]/a').size > 0)
    puts "Successful Login!"
  else
    puts "Login Failed! Please check your email or password."
  
  end

  
  begin
    $driver.find_element(:xpath, "/html/body/nav/div[1]/div[2]/div[1]/ul[2]/li[1]/a")
    $driver.find_element(:xpath, "/html/body/nav/div[1]/div[2]/div[1]/ul[2]/li[1]/a").click
    $driver.find_element(:xpath, "html/body/nav/div[1]/div[2]/div[1]/ul[2]/li/div/ul/li[5]/a")
    $driver.find_element(:xpath, "html/body/nav/div[1]/div[2]/div[1]/ul[2]/li/div/ul/li[5]/a").click
    
  rescue Selenium::WebDriver::Error::NoSuchElementError
    raise 'The Element is not available'
    expect(true).to be_truthy

  end
  puts "User directed to landing page : Passed!"

end


# Login Feature [1.2] User able to login into the site as an admin using https:/homes.com.au/login

When("Admin go to Admin portal") do
  $driver.navigate.to "https://homes.com.au/"
  element = $wait.until {
    e = $driver.find_element(:xpath,'//*[@id="main-menu"]/ul[2]/li[1]/a')
    e if e.displayed?
    }
    puts "Login Button available." if element.displayed?
    $driver.find_element(:xpath,'//*[@id="main-menu"]/ul[2]/li[1]/a').click
    puts "Clicked on login button"

end

Then("Admin directed to Login Admin") do
  admin_directed = wait.until {
    element = $driver.find_element(:xpath,'//*[@id="page-auth"]/div/div/div[4]/form/div/div[4]/button')
    element if element.displayed?
  }
  puts "Directed to Login Portal : Passed!" if admin_directed.displayed?
  
end

Then("Admin enter the email and password") do
  email = wait.until {
    element = $driver.find_element(:name,"email")
    element if element.displayed?
  }
  email.send_keys("admin@homes.com.au")
  puts "Input Email : Passed!" if email.displayed?

  password = wait.until {
    element = $driver.find_element(:name,"password")
    element if element.displayed?
  }
  password.send_keys("b%sZ08KT!6!5")
  puts "Input Password : Passed!" if password.displayed?
  sleep(5)
end

Then("Admin clicked login button") do
  
    $driver.find_element(:xpath,'//*[@id="page-auth"]/div/div/div[4]/form/div/div[4]/button').click
    
  puts "Login Button Clicked : Passed!" 
  sleep(2)
end

Then("Admin directed to admin portal") do
  wait = Selenium::WebDriver::Wait.new(:timeout => 10) 
  puts "Directed to Admin Portal : Passed!" if $wait.until {
  "https://homes.com.au/portal".match($driver.current_url())
  }
  sleep(5)
  $driver.navigate.to "https://www.homes.com.au/logout" 
end


# Login Feature [1.3] User able to login into the site as an office admin using https:/homes.com.au/login


When("Office Admin go to Admin portal") do
  $driver.navigate.to "https://staging.homes.com.au/logout"
  $driver.navigate.to "https://staging.homes.com.au/"
  element = $wait.until {
      e = $driver.find_element(:xpath,'//*[@id="main-menu"]/ul[2]/li[1]/a')
      e if e.displayed?
      }
      puts "Login Button available." if element.displayed?
      $driver.find_element(:xpath,'//*[@id="main-menu"]/ul[2]/li[1]/a').click
      puts "Clicked on login button"
end

Then("Office Admin directed to Login Page") do
  sleep(3)
  element = $wait.until {
      e = $driver.find_element(:xpath,'//*[@id="page-auth"]/div/div/div[4]/form/div/div[3]/div/div[2]')
      e if e.displayed?
      }
      puts "Directed to Login Page : Passed!" if element.displayed?
end

Then("Office Admin enter the email and password") do
  element2 = $wait.until {
      e = $driver.find_element(:name,"email")
      e if e.displayed?
      }
      puts "Email Field available." if element2.displayed?
      element2.send_keys("widy+1@softwareseni.com")
      puts "Input Email 'widy+1@softwareseni.com' : Passed!"

  element3 = $wait.until {
      e = $driver.find_element(:name,"password")
      e if e.displayed?
      }
      puts "Password Field available." if element3.displayed?
      element3.send_keys("123456Ivan")
      puts "Input Password '123456Ivan' : Passed!"

end

Then("Office Admin clicked login button") do
  element = $wait.until {
      e = $driver.find_element(:xpath,'//*[@id="page-auth"]/div/div/div[4]/form/div/div[4]/button')
      e if e.displayed?
      }
      puts "Login Button available." if element.displayed?   
      $driver.find_element(:xpath,'//*[@id="page-auth"]/div/div/div[4]/form/div/div[4]/button').click
      puts "Office Admin clicked login button : Passed!"
      sleep(5)
end

Then("Office Admin directed to office admin portal") do
  wait = Selenium::WebDriver::Wait.new(:timeout => 10) 
  puts "Directed to Office Admin Portal : Passed!" if $wait.until {
  "https://staging.homes.com.au/portal".match($driver.current_url())
  }
  sleep(2)
end


# Login Feature [1.4] User able to login into the site as an agents using https:/homes.com.au/login

When("Agents go to Admin portal") do
  $driver.navigate.to "https://staging.homes.com.au/logout"
  $driver.navigate.to "https://staging.homes.com.au/"
  element = $wait.until {
      e = $driver.find_element(:xpath,'//*[@id="main-menu"]/ul[2]/li[1]/a')
      e if e.displayed?
      }
      puts "Login Button available." if element.displayed?
      $driver.find_element(:xpath,'//*[@id="main-menu"]/ul[2]/li[1]/a').click
      puts "Clicked on login button"
end

Then("Agents directed to Login Page") do
  sleep(3)
  element = $wait.until {
      e = $driver.find_element(:xpath,'//*[@id="page-auth"]/div/div/div[4]/form/div/div[3]/div/div[2]')
      e if e.displayed?
      }
      puts "Directed to Login Page : Passed!" if element.displayed?
end

Then("Agents enter the email and password") do
  element2 = $wait.until {
      e = $driver.find_element(:name,"email")
      e if e.displayed?
      }
      puts "Email Field available." if element2.displayed?
      element2.send_keys("widyy@softwareseni.com")
      puts "Input Email 'widyy@softwareseni.com' : Passed!"

  element3 = $wait.until {
      e = $driver.find_element(:name,"password")
      e if e.displayed?
      }
      puts "Password Field available." if element3.displayed?
      element3.send_keys("123456Ivan")
      puts "Input Password '123456Ivan' : Passed!"

end

Then("Agents clicked login button") do
  element = $wait.until {
      e = $driver.find_element(:xpath,'//*[@id="page-auth"]/div/div/div[4]/form/div/div[4]/button')
      e if e.displayed?
      }
      puts "Login Button available." if element.displayed?   
      $driver.find_element(:xpath,'//*[@id="page-auth"]/div/div/div[4]/form/div/div[4]/button').click
      puts "Agents clicked login button : Passed!"
      sleep(5)
end

Then("Agents directed to Agents portal") do
  wait = Selenium::WebDriver::Wait.new(:timeout => 10) 
  puts "Directed to Agents Portal : Passed!" if $wait.until {
  "https://staging.homes.com.au/portal".match($driver.current_url())
  }
  sleep(2)
end