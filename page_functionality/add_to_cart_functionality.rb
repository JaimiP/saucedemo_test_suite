class AddToCart

  def add_item_to_cart
    $browser.get "https://www.saucedemo.com/inventory.html"
    $browser.find_element(:css, ".btn_inventory").click
  end

end
