require "rspec"
require "faker"
require "site_prism"
require "capybara"
require "cucumber"
require "capybara/dsl"
require "selenium-webdriver"
 
  Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = "https://automacaocombatista.herokuapp.com/treinamento/home"
    Capybara.default_max_wait_time = 2
  end