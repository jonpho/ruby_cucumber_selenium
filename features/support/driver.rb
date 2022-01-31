require 'selenium-webdriver'

class Driver

    def initialize(driver)
      @driver = driver
    end

    def self.browser(type)
      case type
      when 'chrome'
        Selenium::WebDriver.for :chrome
      when 'firefox'
        Selenium::WebDriver.for :firefox
      when 'safari'
        Selenium::WebDriver.for :safari
      else
        puts 'Need to specify what type of browser to test in.'
      end
    end

    def logger(boolean)
      case boolean
      when true
        Selenium::WebDriver.logger.level = :info
      else
        puts 'Logger Off'
      end
    end

    def navigate_to
      @driver.get(ENV["BASE_URL"])
    end

    def explicit_wait(attribute, web_element)
      wait = Selenium::WebDriver::Wait.new(:timeout => 10)
      wait.until { @driver.find_element(attribute, web_element).displayed?}
    end

    def click_link_with_explicit_wait(attribute, web_element)
      explicit_wait(attribute, web_element)
      @driver.find_element(attribute, web_element).click
    end

    def check_element(attribute, web_element, check)
      explicit_wait(attribute, web_element)
      case check
      when 'is_visible'
        @driver.find_element(attribute, web_element).displayed?
      when 'not_visible'
        @driver.find_element(attribute, web_element).displayed? == false
      when 'enabled'
        @driver.find_element(attribute, web_element).enabled?
      when 'disabled'
        @driver.find_element(attribute, web_element).enabled? == false
      when 'selected'
        @driver.find_element(attribute, web_element).selected?
      when 'unselected'
        @driver.find_element(attribute, web_element).selected? == false
      end
    end

  # end

end