loaderForArgNamed: argName indirectIndex: anIndex
	| loader |
	loader := self loaderForArgNamed: argName.
	anIndex isNil
		ifFalse: [ loader := self indirectLoader: loader byIndex: anIndex ].
	^ loader