require 'capybara'
require 'cucumber'
require 'selenium-webdriver'
require 'test/unit'
# require '../pages/solutions_page'

solutions_page = SolutionsPage.new

Given(/^I check that I am on the Solutions page$/) do
  assert_equal solutions_page.expected_solutions_title, @driver.title
end