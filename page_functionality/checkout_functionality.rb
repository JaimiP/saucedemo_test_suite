class Checkout

  def checkout_process(first_name = "Standard", last_name = "User", postal_code = "84101")
    $browser.get "https://www.saucedemo.com/cart.html"
    $browser.find_element(:link_text, 'CHECKOUT').click
    $wait.until{$browser.find_element(:id, 'first-name').displayed?}
    $browser.find_element(:id, 'first-name').send_keys(first_name)
    $browser.find_element(:id, 'last-name').send_keys(last_name)
    $browser.find_element(:id, 'postal-code').send_keys(postal_code)
    $browser.find_element(:id, 'postal-code').submit
    $browser.find_element(:link_text, "FINISH").click
  end

end
