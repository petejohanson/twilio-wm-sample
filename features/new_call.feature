Feature: Answering an incoming call
  In order to provider customers with an informational phone service
  As an automated phone system
  I want to answer all incoming phone calls and direct them to our phone introduction

Scenario: Redirecting incoming calls to our intro
  When answering a new phone call
  Then I am sent to the intro menu
