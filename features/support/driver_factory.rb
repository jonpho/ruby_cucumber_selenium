require 'selenium-webdriver'

class DriverFactory

  def initialize(driver)
    @driver = driver
  end

  def explicit_wait(web_element)
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until { web_element.displayed? }
  end

end