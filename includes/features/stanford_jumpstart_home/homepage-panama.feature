Feature: Panama Homepage Layout
  In order to ensure that the Jumpstart "Panama" page layout is configured correctly
  As an end user
  I want to check for the existence of content that should appear
  (Tests in this Feature should fail if Panama is not the selected homepage layout)

  @api @javascript
  Scenario: Enable the Panama homepage layout as administrator
    Given I am logged in as a user with the "administrator" role
    And I am on "admin/stanford-jumpstart/customize-design"
    Then I press the "edit-layouts-stanford-jumpstart-home-palm-selector" button
    Then I press the "edit-layouts-stanford-jumpstart-home-panama-news-events-selector" button
    Then I should see "Customized design options saved" in the "Console" region
    When I press the element with css selector ".homepage-layout > input[id*='jumpstart-home-panama']"
    Then I should see "Customized design options saved" in the "Console" region

  @api @javascript
  Scenario: Enable the Panama homepage layout as site owner
    Given I am logged in as a user with the "site owner" role
    And I am on "admin/stanford-jumpstart/customize-design"
    When I press the element with css selector ".homepage-layout > input[id*='jumpstart-home-palm']"
    When I press the element with css selector ".homepage-layout > input[id*='jumpstart-home-panama']"
    Then I should see "Customized design options saved" in the "Console" region

  @api
  Scenario: Editor should not access Customize Design
    Given I am logged in as a user with the "editor" role
    And I am on "admin/stanford-jumpstart/customize-design"
    Then I should see the heading "Access denied" in the "Branding" region
    And I should see "This content has been restricted by the author or by the site administrator" in the "Content Body" region

  @api
  Scenario: Enable the Panama homepage layout as administrator
    Given I am logged in as a user with the "administrator" role
    And I am on "admin/stanford-jumpstart/customize-design"
    Then I press the "edit-layouts-stanford-jumpstart-home-panama-selector" button

  Scenario Outline: Header content for panama static
    Given I am on the homepage
    Then I should see the "<Header>" heading in the "<Region>" region

  Examples:
    | Header                | Region                |
    | Welcome to your site! | Main Top              |
    | About                 | Content 3 column flow |
    | In the Spotlight      | Content 3 column flow |
    | Announcements         | Content 3 column flow |

  Scenario Outline: Homepage content panama static
    Given I am on the homepage
    Then I should see "<Text>" in the "<Region>" region

  Examples:
    | Text                                            | Region                |
    | Feature a tagline or website subtitle here      | Main Top              |
    | Edit this block to change the image and caption | Main Top              |
    | This is your About block                        | Content 3 column flow |
    | This is your Highlights block                   | Content 3 column flow |
    | This is your Announcements block                | Content 3 column flow |

  Scenario Outline: Homepage links panama static
    Given I am on the homepage
    Then I should see the link "<Link>" in the "<Region>" region

  Examples:
    | Link                          | Region                |
    | About us                      | Main Top              |
    | Example link                  | Main Top              |
    | More about us                 | Content 3 column flow |
    | More information              | Content 3 column flow |
    | Learn more about our programs | Content 3 column flow |

  @api
  Scenario: Enable the Panama News & Events homepage layout as administrator
    Given I am logged in as a user with the "administrator" role
    And I am on "admin/stanford-jumpstart/customize-design"
    Then I press the "edit-layouts-stanford-jumpstart-home-panama-news-events-selector" button

  Scenario Outline: Header content for panama news and events
    Given I am on the homepage
    Then I should see the "<Header>" heading in the "<Region>" region

  Examples:
    | Header                | Region                |
    | Welcome to your site! | Main Top              |
    | About                 | Content 3 column flow |
    | Recent News           | Content 3 column flow |
    | Upcoming Events       | Content 3 column flow |

  Scenario Outline: Homepage content panama news and events
    Given I am on the homepage
    Then I should see "<Text>" in the "<Region>" region

  Examples:
    | Text                                            | Region                |
    | Feature a tagline or website subtitle here      | Main Top              |
    | Edit this block to change the image and caption | Main Top              |
    | This is your About block                        | Content 3 column flow |
    | Sample News                 | Content 3 column flow |

  Scenario Outline: Homepage links panama news and events
    Given I am on the homepage
    Then I should see the link "<Link>" in the "<Region>" region

  Examples:
    | Link                          | Region                |
    | About us                      | Main Top              |
    | Example link                  | Main Top              |
    | More about us                 | Content 3 column flow |
    | See more news                 | Content 3 column flow |
    | See more events               | Content 3 column flow |

