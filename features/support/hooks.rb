require 'selenium-webdriver'

Before do
  @driver = EnvironmentSettings::browser('chrome')
  @driver.manage.window.resize_to(1600, 1050)
  @driver.manage.window.maximize
  class_instantiation
end

After do
  @driver.quit
end

# List the classes the need objects created for them here.

def class_instantiation
  @custom_driver = DriverFactory.new(@driver)
  @solutions_page = SolutionsPage.new(@driver, @custom_driver)
  @home_page = HomePage.new(@driver, @custom_driver)
end