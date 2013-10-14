testBaseline20Load
	| project version |
	project := self exampleProject.
	version := project currentVersionAgainst: #('Core') "in 2.1 'Core' is a package and in 2.0 'Core' is a group ... no errors"