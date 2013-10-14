testBaseline30Packages
	| project version expected list |
	project := self masterProject.
	version := project version: '3.0-baseline'.
	expected := #('Master-Core' 'Master-Tests' 'Master-Platform' ).
	list := version packages.
	self assert: (list size = expected size).
	list do: [:pkg |
		self assert: (expected includes: pkg name) ].