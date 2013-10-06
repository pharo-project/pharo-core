packageSpecsInLoadOrder

	| loadOrder packageNames |
	loadOrder := self versionSpec packages ~~ nil
		ifTrue: [ self versionSpec packages packageSpecsInLoadOrder ]
		ifFalse: [ OrderedCollection new ].
	packageNames := packages values collect: [:pkg | pkg name ].
	^loadOrder select: [:pkg | packageNames includes: pkg name ]