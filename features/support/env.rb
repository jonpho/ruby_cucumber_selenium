require 'selenium-webdriver'

module EnvironmentSettings

  class << self

    def browser(type)
      case type
      when 'chrome'
        Selenium::WebDriver.for :chrome
      when 'firefox'
        Selenium::WebDriver.for :firefox
      when 'safari'
        Selenium::WebDriver.for :safari
      else
        puts 'Need to speicify what type of browser to test in.'
      end
    end

  end

end

def logging(boolean)
  case boolean
    when true
      Selenium::WebDriver.logger.level = :info
    else
      puts 'Logging Off'
  end
end
