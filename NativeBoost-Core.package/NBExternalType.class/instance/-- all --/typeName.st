typeName
	| tName |
	tName := self class name.
	pointerArity timesRepeat: [ tName , '*' ].
	^ tName