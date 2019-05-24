Feature: Log out of the SauceDemo page.
	As a Standard User
  I want to Log Out of the website
  So that I have account security

Scenario: Log out of the SauceDemo Website
	Given I am already logged in to the SauceDemo site
	When I click Log Out
	Then I should be directed to the main log in page
