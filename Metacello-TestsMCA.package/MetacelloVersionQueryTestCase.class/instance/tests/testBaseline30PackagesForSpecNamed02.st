testBaseline30PackagesForSpecNamed02
	| project version expected list |
	project := self masterProject.
	version := project version: '3.0-baseline'.
	expected := #('Master-Core' 'Master-Platform' 'Project-Core' 'Example-Core' 'Example-AddOn' 'Project-Tests' 'Example-Tests' 'Master-Tests' 'Misc-UTF8' 'Misc-MD5' 'Misc-XML').
	list := version allPackagesForSpecNamed: 'Tests'.
	self assert: (list size = expected size).
	list do: [:pkg |
		self assert: (expected includes: pkg name) ].