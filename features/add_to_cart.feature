Feature: Add an item to my cart from the SauceDemo home page.
	As a Standard User
  I want to add an item to my cart
  So that I can make a purchase

Scenario: Adding an item to my cart displays remove button
	Given I am logged in to the SauceDemo site
	When I click add to cart
	Then the selected item should have a remove from cart button

Scenario: Adding an item to the cart updates the cart badge
	Given I am logged in to the SauceDemo site
	When I add an item to my cart
	Then I should see a badge appear over my cart icon
