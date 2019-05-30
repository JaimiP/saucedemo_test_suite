require_relative "../../page_functionality/add_to_cart_functionality"
require_relative "../../page_functionality/login_functionality"

Given (/^I am logged in to the SauceDemo site$/) do
  $browser.get("https://www.saucedemo.com")
  login = Login.new
  login.login_user("standard_user")
end

When (/^I click add to cart$/) do
  add_to_cart = AddToCart.new
  add_to_cart.add_item_to_cart
end

Then (/^the selected item should have a remove from cart button$/) do
  expect($browser.find_element(:css, ".btn_inventory").text.include?("REMOVE"))
end


When (/^I add an item to my cart$/) do
  add_to_cart = AddToCart.new
  add_to_cart.add_item_to_cart
end

Then (/^I should see a badge appear over my cart icon$/) do
  expect($browser.find_element(:css, ".shopping_cart_badge").displayed?).to eql true
end
