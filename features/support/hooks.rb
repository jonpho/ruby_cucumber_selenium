require 'selenium-webdriver'

Before do
  @driver = Selenium::WebDriver.for :chrome
  @driver.manage.window.resize_to(1600, 1050)
  @driver.manage.window.maximize
  @solutions_page = SolutionsPage.new(@driver)
  @home_page = HomePage.new(@driver)
end

After do
  @driver.quit
end