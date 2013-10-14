testBaseline10PackagesForSpecNamed08
	| project version expected list |
	project := self exampleProject.
	version := project version: '1.0-baseline'.
	expected := #('Example-Core' 'Example-AddOn' 'Example-Tests' 'Example-TestsUI' 'Example-UI' 'Misc-UTF8' ).
	list := version allPackagesForSpecNamed: { 'No UI'. 'UI'. 'Tests'. }.
	self assert: (list size = expected size).
	list do: [:pkg |
		self assert: (expected includes: pkg name) ].