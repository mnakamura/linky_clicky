Feature: Menu Block
  In order to be able to navigate the website
  As a viewer
  I want to be able to use dropdowns and have relevant sidebar menus via menu block module.

Scenario: Main menu dropdowns
 Given I am on "connect"
 Then I should see a ".block-menu-block" element


Scenario: Benefits dropdowns
 Given I am on "benefits-rewards"
 Then I should see a ".block-menu-block" element
 
 Scenario: Sidebar menu in Benefits subpages
 Given I am on "benefits-rewards/health"
 Then I should see a ".block-menu-block" element
