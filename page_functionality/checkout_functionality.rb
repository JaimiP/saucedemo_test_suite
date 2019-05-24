class Checkout

  def checkout_process
    $browser.get "https://www.saucedemo.com/cart.html"
    $browser.find_element(:link_text, 'CHECKOUT').click
    $wait.until{$browser.find_element(:id, 'first-name').displayed?}
    $browser.find_element(:id, 'first-name').send_keys('Standard')
    $browser.find_element(:id, 'last-name').send_keys('User')
    $browser.find_element(:id, 'postal-code').send_keys('84101')
    $browser.find_element(:id, 'postal-code').submit
    $browser.find_element(:link_text, "FINISH").click
  end

end
