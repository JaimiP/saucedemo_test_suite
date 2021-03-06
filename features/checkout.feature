Feature: Checkout
	As a Standard User
  I want to initiate the checkout process.
  So that I can make a purchase

Scenario: Begin checkout process
	Given I am logged in as a standard user with items in my cart
	When I follow the checkout process
	Then I should be directed to the checkout-complete page for confirmation

Scenario: Confirm error for missing last name on checkout-step-one
	Given I am logged in as a standard user with items in my cart
	When they click continue with a missing last name
	Then they will get an error requiring last name

Scenario: Confirm error for missing first name on checkout-step-one
	Given I am logged in as a standard user with items in my cart
	When they click continue with a missing first name
	Then they will get an error requiring first name

Scenario: Confirm error for missing postal code on checkout-step-one
    Given I am logged in as a standard user with items in my cart
    When they click continue with a missing postal code
    Then they will get an error requiring postal code
