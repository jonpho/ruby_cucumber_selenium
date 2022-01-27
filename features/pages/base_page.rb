require 'selenium-webdriver'
require 'yaml'
require_relative '../support/driver_factory'

include Test::Unit::Assertions

class BasePage < DriverFactory

    def initialize(driver, custom_driver)
        @driver = driver
        @custom_driver = custom_driver
    end

    def load_yaml(page_name)
        YAML.load_file("#{page_name}.yaml")
    end

    def get_element(element, element_type, page)
        el = load_yaml(page)
        @driver.find_element(el)
    end

end