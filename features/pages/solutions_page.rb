require 'capybara'
require 'cucumber'
require 'selenium-webdriver'
require 'test/unit'

class SolutionsPage

  def initialize(driver)
    @driver = driver
  end

  def expected_solutions_title
    "Solutions for Software QA Testing, Nearshore, Continuous Integration"
  end

end