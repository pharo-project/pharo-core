testBaseline10ResolveToLoadableSpecs01
	| project version expected list |
	project := self exampleProject.
	version := project version: '1.0-baseline'.

	expected := #('Example-Core' 'UTF8').
	list := version resolveToLoadableSpecs: #('Example-Core').
	self assert: (list size = expected size).
	list do: [:pkg |
		self assert: (expected includes: pkg name) ].

	expected := #('Example-AddOn' 'Example-Core' 'UTF8').
	list := version resolveToLoadableSpecs: #('Example-AddOn').
	self assert: (list size = expected size).
	list do: [:pkg |
		self assert: (expected includes: pkg name) ].

	expected := #('Example-Core' 'Example-AddOn' 'Example-Tests' 'UTF8').
	list := version resolveToLoadableSpecs: #('No UI').
	self assert: (list size = expected size).
	list do: [:pkg |
		self assert: (expected includes: pkg name) ].
