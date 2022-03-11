require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'rubygems'
require 'webdrivers'
require_relative 'helper.rb'
World(Helper)

Capybara.configure do |config|
    #selenium #selenium_chrome #selenium_chrome_healess
    config.default_driver = :selenium_chrome
    config.app_host = 'https://advantageonlineshopping.com/#/'
#    Capybara.page.driver.browser.manage.window.maximize
    config.default_max_wait_time = 5

end
