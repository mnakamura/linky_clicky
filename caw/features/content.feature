Feature: Content
  In order to ensure that the Cardinal at Work Website has the correct content
  As an end user
  I want to check for the existence of content that should appear

Scenario Outline: Homepage block and footer content
  Given I am on the homepage
  Then I should see the "<Header>" heading in the "<Region>" region
  Examples:
  | Header | Region |
  | Explore | Main Lower |
  | Connect | Main Lower |
  | Quick Links | Main Lower |
  | See Also | Main Lower |

Scenario: Benefits subsite
  Given I am on "benefits-rewards"
  Then I should see "Health" in the "Main Navigation" region
  And I should see "Retirement" in the "Main Navigation" region
  And I should see "Compensation" in the "Main Navigation" region
  And I should see "WorkLife" in the "Main Navigation" region
  And I should see "Tuition" in the "Main Navigation" region
  And I should see "My Benefits" in the "Main Navigation" region

Scenario: Learn & Grow subsite
  Given I am on "learn-grow"
  Then I should see "Learn &" in the "Header" region
  Then I should see "Grow" in the "Header" region

  Scenario: View "I want to..." block
    Given I am on "benefits-rewards"
    Then I should see a "#block-bean-i-want-to-block-on-benefits-rew" element
