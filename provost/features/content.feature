Feature: Content
  In order to ensure that the Provost website has the correct content
  As an end user
  I want check for the existence of content that should appear

Scenario Outline: Footer content
  Given I am on the homepage
  Then I should see the "<Header>" heading in the "<Region>" region
  
  Examples:
  | Header                          | Region |
  | Stay connected to Stanford      | Footer |
  | Contact Us                      | Footer |
  | Health and Wellness at Stanford | Footer |

Scenario Outline: Homepage content
  Given I am on the homepage
  Then I should see "<Text>" in the "<Region>" region
  
  Examples:
  | Text                     | Region        |
  | As the chief academic    | First sidebar |
  | Read more about Stanford | First sidebar |
  | The latest publications  | Content       |

Scenario Outline: About the Office content
  Given I am on "about-office"
  Then I should see "<Text>" in the "<Region>" region
  
  Examples:
  | Text                  | Region  |
  | As the chief academic | Content |

Scenario Outline: About the Office content
  Given I am on "about-office"
  Then I should see the "<Header>" heading in the "<Region>" region
  
  Examples:
  | Header           | Region        |
  | About the Office | Content       |
  | About the Office | First sidebar |

Scenario: About the Provost content
  Given I am on "about-professor-john-w-etchemendy"
  Then I should see "John Etchemendy received his B.A. and M.A. in Philosophy from the University of Nevada, Reno in 1973 and 1976 respectively." in the "Content" region
  
Scenario: Announcements content
  Given I am on "announcements-updates"
  Then I should see "The Western Association of Schools and Colleges (WASC) has reaffirmed Stanford University's accreditation across all seven schools" in the "Content" region
  
Scenario: Contact page content
  Given I am on "contact"
  Then I should see "The Office of the Provost is located in Building 10, situated in the Inner Quad, at the heart of the Stanford campus." in the "Content" region
  And I should see the heading "Contact" in the "Content" region