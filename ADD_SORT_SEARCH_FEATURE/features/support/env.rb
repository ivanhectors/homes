# run : cucumber --tags '@yourtags' / cucumber
require "rubygems"
require "selenium-webdriver"
require "rspec"
 
$driver = Selenium::WebDriver.for :chrome
$driver.manage.window.maximize
$wait = Selenium::WebDriver::Wait.new(:timeout => 5)
 