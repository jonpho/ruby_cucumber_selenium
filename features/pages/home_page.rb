require 'capybara'
require 'cucumber'
require 'selenium-webdriver'
require 'test/unit'

class HomePage

  def initialize(driver)
    @driver = driver
  end

  def solutions_link
    @driver.find_element(:id, "menu-item-26")
  end

  def about_link
    @driver.find_element(:id, "menu-item-1861")
  end

  def explore_link
    @driver.find_element(:id, "menu-item-2830")
  end

  def careers_link
    @driver.find_element(:id, "menu-item-22")
  end

  def contact_us_link
    @driver.find_element(:id, "menu-item-23")
  end

end