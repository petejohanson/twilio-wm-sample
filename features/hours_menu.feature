Feature: The hours menu
  In order to provider customers with a way to access the business hours
  As an automated phone system
  I want to provide an hours menu that list the hours

Scenario: Loading the menu
  When entering the hours menu
  Then I am prompted for a number
   And I hear the message 'Our hours are'

Scenario: Pressing 1
  Given I am in the hours menu
   When I press 1
   Then I am sent to the hours menu

Scenario: Pressing 2
  Given I am in the hours menu
   When I press 2
   Then I am sent to the intro menu
