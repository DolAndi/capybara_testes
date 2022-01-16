require 'cucumber'
require 'httparty'
require 'capybara/cucumber'
require 'pry'
require 'json'
require 'rspec'
require 'selenium-webdriver'

Capybara.configure do |config|
    #selenium   selenium_chrome     selenium_chrome_headless
    config.default_driver = :selenium_chrome
    config.app_host = 'https://automacaocombatista.herokuapp.com'
    config.default_max_wait_time = 5
end
Capybara.page.driver.browser.manage.window.maximize

HTTParty::Basement.default_options.update(verify: false)


$base_url = 'https://automacaocombatista.herokuapp.com'
