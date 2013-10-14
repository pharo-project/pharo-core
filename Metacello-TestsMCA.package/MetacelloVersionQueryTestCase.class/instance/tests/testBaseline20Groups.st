testBaseline20Groups
	| project version expected list |
	project := self projectProject.
	version := project version: '2.0-baseline'.
	expected := #('Core' 'Tests').
	list := version groups.
	self assert: (list size = expected size).
	list do: [:pkg |
		self assert: (expected includes: pkg name) ].