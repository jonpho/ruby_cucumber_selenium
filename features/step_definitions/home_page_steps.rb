require 'cucumber'
require 'selenium-webdriver'
require 'test/unit'

@home_page = HomePage.new(@driver, @custom_driver)

Given(/^I navigate to TapQA$/) do
  @driver.get "http://www.tapqa.com"
end

Given(/^I click on Solutions Menu$/) do
  @home_page.solutions_link.click
end

Given(/^I click on About Menu$/) do
  @home_page.about_link.click
end

Given(/^I click on Explore Menu$/) do
  @home_page.explore_link.click
end

Given(/^I click on Careers Menu$/) do
  @home_page.careers_link.click
end

Given(/^I click on Contact Us Menu$/) do
  @home_page.contact_us_link.click
end

