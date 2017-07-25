require 'capybara'
require 'cucumber'
require 'selenium-webdriver'
require 'test/unit'

Given(/^I navigate to TapQA$/) do
  @driver.get "http://www.tapqa.com"
  sleep(10)
end

Given(/^I click on Solutions Menu$/) do
  @driver.find_element(:id, "menu-menu-1").click
end

Given(/^I check that I am on the Solutions page$/) do
  assert_equal "Solutions for Software QA Testing, Nearshore, Continuous Integration", @driver.title
end

Given(/^I click on About Menu$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^I click on Explore Menu$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^I click on Careers Menu$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^I click on Contact Us Menu$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should have results$/) do
  pending # Write code here that turns the phrase above into concrete actions
end