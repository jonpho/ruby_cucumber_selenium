require 'selenium-webdriver'

class DriverFactory

  def initialize(driver)
    @driver = driver
  end

  def explicit_wait(web_element)
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until { web_element.displayed? }
  end


  def click_link_with_explicit_wait(web_element)
    explicit_wait(web_element)
    web_element.click
  end

end