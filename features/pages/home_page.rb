require 'selenium-webdriver'
require 'test/unit'
require_relative '../support/driver_factory'

class HomePage < DriverFactory
  include Test::Unit::Assertions

  def initialize(driver, customer_driver)
    @driver = driver
    @custom_driver = customer_driver
  end

  # WebElements Below

  def solutions_link
    @driver.find_element(:id, 'menu-item-26')
  end

  def about_link
    @driver.find_element(:id, 'menu-item-1861')
  end

  def explore_link
    @driver.find_element(:id, 'menu-item-2830')
  end

  def careers_link
    @driver.find_element(:id, 'menu-item-22')
  end

  def contact_us_link
    @driver.find_element(:id, 'menu-item-23')
  end

  # Methods for Actions

  def solutions_link_click
    click_link_with_explicit_wait(solutions_link)
  end

end