require 'capybara'
require 'cucumber'
require 'selenium-webdriver'

Given(/^I navigate to google$/) do
  driver.get("http://www.google.com")
end

And(/^I enter text to search$/) do
  driver.find_element(:id, "sb_ifc0")
end