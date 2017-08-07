require 'selenium-webdriver'
require 'test/unit'

class SolutionsPage
  include Test::Unit::Assertions

  def initialize(driver, custom_driver)
    @driver = driver
    @custom_driver = custom_driver
  end

  # Assertions

  def assert_solution_page_title
    expected_title = "Solutions for Software QA Testing, Nearshore, Continuous Integration"
    assert_equal expected_title, @driver.title
  end

end