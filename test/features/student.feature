Feature: Search string

  Scenario: First Name search
    When I browse to the "/"
    When I enter "Aus" into "input.first" field
    Then I should see "Austin" in "firstName"
    When I enter "C" into "input.first" field
    Then I should see "Candace" and "Chang" in "firstName"

  Scenario: Last Name search
     When I browse to the "/"
     When I enter "Bu" into "input.last" field
     Then I should see "Burnett" in "lastName"
     When I enter "re" into "input.last" field
     Then I should see "Freeman" in "lastName"

  Scenario: Age search
    When I browse to the "/"
    When I enter "4" into "input.age" field
    Then I should see "Bauer" in "firstName"
    When I enter "8" into "input.age" field
    Then I should see "Bridges" in "lastName"

  Scenario: Email search
    When I browse to the "/"
    When I enter "ya" into "input.email" field
    Then I should see "Ryan" in "firstName"
    When I enter "tv" into "input.email" field
    Then I should see "good.burnett@undefined.tv" in "email"

  Scenario: Phone number search
    When I browse to the "/"
    When I enter "40" into "input.phone" field
    Then I should see "33" in "age"
    When I enter "29" into "input.phone" field
    Then I should see "Maxine" in "firstName"

  Scenario: Main search
    When I browse to the "/"
    When I enter "rr" into "input.search" field
    Then I should see "Gutierrez" in "firstName"
    When I browse to the "/"
    When I enter "se" into "input.search" field
    Then I should see "Rose in "lastName"

