testBaseline30ResolveToLoadableSpecs01
	| project version expected list |
	project := self masterProject.
	version := project version: '3.0-baseline'.

	expected := #('Master-Core' 'Master-Platform' 'Project Core' 'XML').
	list := version resolveToLoadableSpecs: #('Core').
	self assert: (list size = expected size).
	list do: [:pkg |
		self assert: (expected includes: pkg name) ].


