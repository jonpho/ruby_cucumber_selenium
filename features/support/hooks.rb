require 'dotenv'
require 'report_builder'
require 'selenium-webdriver'
require 'webdrivers'

Before do
  Dotenv.load
  @browser = Driver::browser('chrome')
  # @driver.manage.window.resize_to(1600, 1050)
  @browser.manage.window.maximize
  class_instantiation
end

After do
  @browser.quit
end

# List the objects that need to be created for the page objects.

def class_instantiation
  @driver = Driver.new(@browser)
  @base_page = BasePage.new(@browser)
end