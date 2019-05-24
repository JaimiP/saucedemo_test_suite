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
  checkout.checkout_process
end

Then (/^I should be directed to the checkout-complete page for confirmation$/) do
  expect($browser.current_url == "https://www.saucedemo.com/checkout-complete.html")
end
