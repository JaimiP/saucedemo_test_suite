require 'selenium-webdriver'
require 'rspec'

Before do |scenario|
 puts scenario.name
 $browser = Selenium::WebDriver.for :chrome
 $wait = Selenium::WebDriver::Wait.new(timeout: 15)
end

After do |scenario|
  $browser.close
end
