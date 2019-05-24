Feature: Checkout
	As a Standard User
  I want to initiate the checkout process.
  So that I can make a purchase

Scenario: Begin checkout process
	Given I am logged in as a standard user with items in my cart
	When I follow the checkout process
	Then I should be directed to the checkout-complete page for confirmation
