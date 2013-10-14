testBaseline30Groups
	| project version expected list |
	project := self masterProject.
	version := project version: '3.0-baseline'.
	expected := #('Core' 'Tests').
	list := version groups.
	self assert: (list size = expected size).
	list do: [:pkg |
		self assert: (expected includes: pkg name) ].