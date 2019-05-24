require_relative "../../page_functionality/logout_functionality"
require_relative "../../page_functionality/login_functionality"

Given (/^I am already logged in to the SauceDemo site$/) do
  $browser.get("https://www.saucedemo.com")
  login = Login.new
  login.login_user("standard_user")
end

When (/^I click Log Out$/) do
 logout = Logout.new
 logout.logout_method
end

Then (/^I should be directed to the main log in page$/) do
  expect($browser.current_url == "https://www.saucedemo.com/index.html")
end
