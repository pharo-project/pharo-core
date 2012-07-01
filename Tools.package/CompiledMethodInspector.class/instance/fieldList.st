accessing
fieldList

	| keys |
	keys := OrderedCollection new.
	keys add: 'self'.
	keys add: 'all bytecodes'.
	keys add: 'header'.
	1 to: object numLiterals do: [ :i |
		keys add: 'literal', i printString ].
	object initialPC to: object size do: [ :i |
		keys add: i printString ].
	^ keys asArray
	