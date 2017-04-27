Feature: As a user, I want to add new book references

	Scenario: user can add new valid book reference
		Given create page is selected
		And create new book reference is selected
		When reference key "X", author "Jussi", title "MitenTestataan", publisher "RailsMestarit", year "2017" are given
		Then new book reference with field "Jussi" is created

	Scenario: user can not add invalid book reference
		Given create page is selected
		And create new book reference is selected
		When no book fields are given
		Then new book reference is not created and error message is given
