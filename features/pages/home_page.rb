require 'bundler/setup'
require 'selenium-webdriver'
require 'test/unit'
require_relative '../support/driver_factory'

class HomePage < DriverFactory
  include Test::Unit::Assertions

  def initialize(driver, custom_driver)
    @driver = driver
    @custom_driver = custom_driver
  end

  # WebElements Below

  def solutions_link
    @driver.find_element(:xpath, '//*[@id="menu-item-3880"]/a/span')
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