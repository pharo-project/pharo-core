testBaseline20PackagesForSpecNamed01
	| project version expected list |
	project := self projectProject.
	version := project version: '2.0-baseline'.
	expected := #('Project-Core').
	list := version packagesForSpecNamed: 'Core'.
	self assert: (list size = expected size).
	list do: [:pkg |
		self assert: (expected includes: pkg name) ].