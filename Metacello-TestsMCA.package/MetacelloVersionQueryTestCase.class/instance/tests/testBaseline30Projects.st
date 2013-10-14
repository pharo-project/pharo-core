testBaseline30Projects
	| project version expected list |
	project := self masterProject.
	version := project version: '3.0-baseline'.
	expected := #('Project Core' 'Project Tests' 'XML').
	list := version projects.
	self assert: (list size = expected size).
	list do: [:pkg |
		self assert: (expected includes: pkg name) ].