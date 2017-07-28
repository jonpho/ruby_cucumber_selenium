require 'selenium-webdriver'

Before do
  @driver = Selenium::WebDriver.for :chrome
  @driver.manage.window.resize_to(1600, 1050)
  @driver.manage.window.maximize
end

After do
  @driver.quit
end