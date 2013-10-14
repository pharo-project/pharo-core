testBaseline21PackagesForSpecNamed01
	| project version expected list |
	project := self projectProject.
	version := project version: '2.1-baseline'.
	expected := #('Project-Core' 'Example-Core' 'Example-AddOn' 'Misc-UTF8' 'Misc-MD5').
	list := version allPackagesForSpecNamed: 'Core'.
	self assert: (list size = expected size).
	list do: [:pkg |
		self assert: (expected includes: pkg name) ].