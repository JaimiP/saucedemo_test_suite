class Logout

  def logout_method
    $browser.find_element(:class, 'bm-burger-button').click
    $wait.until{$browser.find_element(:id, 'logout_sidebar_link').displayed?}
    $browser.find_element(:link_text, 'Logout').click
  end

end
