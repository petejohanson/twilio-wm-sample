Feature: The intro menu
  In order to provider customers with a way to access any desired information
  As an automated phone system
  I want to provide a simple introductory menu with options to navigate to other menus

Scenario: Loading the menu
  When entering the intro menu
  Then I am prompted for a number
   And I hear the message 'Welcome'

Scenario: Pressing 1
  Given I am in the intro menu
   When I press 1
   Then I am sent to the address menu

Scenario: Pressing 2
  Given I am in the intro menu
   When I press 2
   Then I am sent to the hours menu
