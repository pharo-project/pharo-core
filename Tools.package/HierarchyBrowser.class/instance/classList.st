class list
classList
	classList := classList select: [ :each | Smalltalk globals includesKey: each trimBoth asSymbol ].
	^ classList