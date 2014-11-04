Feature: Academics
  In order to ensure that the Jumpstart Academic website Academics content is visible
  As an end user
  I want to check for the existence of page and block content

  Scenario: Viewing a featured image on the Undergraduate Programs page
    Given I am on "academics/undergraduate-program"
    Then I should see "Undergraduates studying outside Meyer" in the "Content Body" region

  Scenario: Viewing a postcard block on the Graduate Programs page
    Given I am on "academics/graduate-programs"
    Then I should see "Our Graduate Students" in the "First sidebar" region

  Scenario: Clicking the sidebar menu
    Given I am on "academics/graduate-programs"
    And I click "Overview" in the "First sidebar" region
    Then I should see "This is your Academics Overview page" in the "Content Body" region
    
  Scenario: Existence of block on Graduate Students page
   Given I am on "people/students"
   Then I should see "Search students by name" in the "First sidebar" region
   
  Scenario: Content on Academics page
   Given I am on "academics/academics-overview"
   Then I should see the heading "Academics Overview" 
   And I should see the link "Learn more about the undergraduate program" in the "Content Body" region
   And I should see the link "Learn more about the graduate programs" in the "Content Body" region
