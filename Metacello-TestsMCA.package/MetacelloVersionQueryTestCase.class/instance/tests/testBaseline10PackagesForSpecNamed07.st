testBaseline10PackagesForSpecNamed07
	| project version expected list |
	project := self exampleProject.
	version := project version: '1.0-baseline'.
	expected := #('Example-Core' 'Example-AddOn' 'Example-Tests' 'Example-UI' 'Example-TestsUI').
	list := version packagesForSpecNamed: 'default'.
	self assert: (list size = expected size).
	list do: [:pkg |
		self assert: (expected includes: pkg name) ].