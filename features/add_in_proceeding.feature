Feature: As a user, I want to add new in proceeding references

	Scenario: user can add new valid in proceeding reference
		Given create page is selected
		And create new in proceeding reference is selected
		When reference key "X", author "Jussi", title "MitenTestataan", booktitle "RailsOpus", year "2017" are given
		Then new in proceeding reference with field "Jussi" is created

	Scenario: user can not add invalid in proceeding reference
		Given create page is selected
		And create new in proceeding reference is selected
		When no in proceeding fields are given
		Then new in proceeding reference is not created and error message is given
