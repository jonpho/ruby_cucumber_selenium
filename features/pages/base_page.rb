require 'selenium-webdriver'
require 'yaml'
require 'test/unit'

include Test::Unit::Assertions

class BasePage < Driver
    def initialize(driver)
        @driver = driver
        @yaml_data = {}
    end

    def load_yaml(page_name)
        page = page_name
        page.downcase!
        @yaml_data = YAML.load_file("features/pages/#{page}.yaml")
    end

    def get_element(element, element_type, page)
        load_yaml(page)
        @yaml_data[element_type][element]
        key = @yaml_data[element_type][element].keys[0]
        [key, @yaml_data[element_type][element][key]]
    end

    def get_key(element_type, element)
        @yaml_data[element_type][element].keys[0]
    end

end