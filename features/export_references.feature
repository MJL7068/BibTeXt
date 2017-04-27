Feature: As a user, I want to export all references in BibTeX format

Scenario: user can export a reference in BibTeX format
    Given create page is selected
    When article is created with key "XYZ", author "Antti", journal "Mestarit", title "Paras", year "2017" are given
    Then textbox exists
    And export has formatted key "XYZ", author "Antti", journal "Mestarit", title "Paras", year "2017"
