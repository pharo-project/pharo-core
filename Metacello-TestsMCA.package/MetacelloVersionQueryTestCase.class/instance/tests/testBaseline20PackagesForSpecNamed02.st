testBaseline20PackagesForSpecNamed02
	| project version expected list |
	project := self projectProject.
	version := project version: '2.0-baseline'.
	expected := #('Project-Core' 'Example-Core' 'Example-AddOn' 'Example-Tests' 'Example-UI' 'Example-TestsUI' 'Misc-UTF8').
	list := version allPackagesForSpecNamed: 'Core'.
	self assert: (list size = expected size).
	list do: [:pkg |
		self assert: (expected includes: pkg name) ].