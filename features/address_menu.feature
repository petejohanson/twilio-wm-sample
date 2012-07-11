Feature: The intro menu
  In order to provider customers with a way to access the business address
  As an automated phone system
  I want to provide a simple menu that provides the business address

Scenario: Loading the menu
  When entering the address menu
  Then I am prompted for a number
   And I hear the message 'Our address is'

Scenario: Pressing 1
  Given I am in the address menu
   When I press 1
   Then I am sent to the address menu

Scenario: Pressing 2
  Given I am in the address menu
   When I press 2
   Then I am sent to the intro menu
