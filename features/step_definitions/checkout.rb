require_relative "../../page_functionality/add_to_cart_functionality"
require_relative "../../page_functionality/login_functionality"
require_relative "../../page_functionality/checkout_functionality"

Given (/^I am logged in as a standard user with items in my cart$/) do
  $browser.get("https://www.saucedemo.com")
  login = Login.new
  login.login_user("standard_user")
  add_to_cart = AddToCart.new
  add_to_cart.add_item_to_cart
end


When (/^I follow the checkout process$/) do
  checkout = Checkout.new
  checkout.checkout_step_one
  checkout.checkout_step_two('Standard','User','84101')
  checkout.checkout_step_three
end

Then (/^I should be directed to the checkout-complete page for confirmation$/) do
  expect($browser.current_url == "https://www.saucedemo.com/checkout-complete.html")
end


When (/^they click continue with a missing last name$/) do
  checkout = Checkout.new
  checkout.checkout_step_one
  checkout.checkout_step_two('Standard','','84101')
end

Then (/^they will get an error requiring last name$/) do
  expect($browser.find_element(:tag_name, "h3").text.include?("Last Name is required")).to eql true
end


When (/^they click continue with a missing first name$/) do
  checkout = Checkout.new
  checkout.checkout_step_one
  checkout.checkout_step_two('','User','84101')
end

Then (/^they will get an error requiring first name$/) do
  expect($browser.find_element(:tag_name, "h3").text.include?("First Name is required")).to eql true
end


When (/^they click continue with a missing postal code$/) do
 checkout = Checkout.new
 checkout.checkout_step_one
 checkout.checkout_step_two('Standard','User', '')
end

Then (/^they will get an error requiring postal code$/) do
 expect($browser.find_element(:tag_name, "h3").text.include?("Postal Code is required")).to eql true
end
