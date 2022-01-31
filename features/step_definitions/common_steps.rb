require 'cucumber'
require 'selenium-webdriver'
require 'test/unit'
require_relative '../pages/base_page'


Given(/^I navigate to TapQA$/) do
  @driver.navigate_to
end

Given('I click on {string} on {string} page') do |element, page|
  navigated_page = @base_page.get_element(element, "button", page)
  @base_page.click_link_with_explicit_wait(navigated_page[0], navigated_page[1])
end

Given(/^I click on Solutions Menu$/) do
  @home_page.solutions_link_click
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

Given(/^I check that I am on the Solutions page$/) do
  @solutions_page.assert_solution_page_title
end