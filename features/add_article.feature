Feature: As a user, I want to add new article references

	Scenario: user can add new valid article reference
		Given create page is selected
		And create new article reference is selected
		When reference key "X", author "Jussi", journal "Mestarit", title "Paras", year "2017" are given
		Then new article reference with field "Jussi" is created

	Scenario: user can not add invalid article reference
		Given create page is selected
		And create new article reference is selected
		When no article fields are given
		Then new article reference is not created and error message is given
