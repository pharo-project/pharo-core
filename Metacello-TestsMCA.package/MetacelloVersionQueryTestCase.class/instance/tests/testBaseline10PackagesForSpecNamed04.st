testBaseline10PackagesForSpecNamed04
	| project version expected list |
	project := self exampleProject.
	version := project version: '1.0-baseline'.
	expected := #('Example-Core' 'Example-AddOn' ).
	list := version packagesForSpecNamed: 'Core'.
	self assert: (list size = expected size).
	list do: [:pkg |
		self assert: (expected includes: pkg name) ].