testBaseline10PackagesForSpecNamed02
	| project version expected list |
	project := self exampleProject.
	version := project version: '1.0-baseline'.
	expected := #().
	list := version packagesForSpecNamed: 'None existent'.
	self assert: (list size = expected size).
	list do: [:pkg |
		self assert: (expected includes: pkg name) ].