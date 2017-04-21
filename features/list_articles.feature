Feature: As a user, I want to list added article references


	Scenario: user can list article references
		Given new page is created
		When article is created with key "XYZ", author "Antti", journal "Mestarit", title "Paras", year "2017" are given
		Then table exists
		And article reference with key "XYZ" is listed
