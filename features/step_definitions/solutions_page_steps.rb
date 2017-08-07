require 'cucumber'
require 'selenium-webdriver'
require 'test/unit'

@solutions_page = SolutionsPage.new(@driver, @custom_driver)

Given(/^I check that I am on the Solutions page$/) do
  @solutions_page.assert_solution_page_title
end