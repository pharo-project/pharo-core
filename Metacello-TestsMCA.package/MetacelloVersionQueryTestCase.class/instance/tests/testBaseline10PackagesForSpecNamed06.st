testBaseline10PackagesForSpecNamed06
	| project version expected list |
	project := self exampleProject.
	version := project version: '1.0-baseline'.
	expected := #('Example-Core' 'Example-AddOn' 'Example-Tests' 'Example-TestsUI').
	list := version packagesForSpecNamed: 'UI'.
	self assert: (list size = expected size).
	list do: [:pkg |
		self assert: (expected includes: pkg name) ].