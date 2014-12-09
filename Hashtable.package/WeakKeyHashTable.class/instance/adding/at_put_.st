at: aKey put: aValue
	aKey ifNil: [self error: 'WeakKeyHashTables cannot meaningfully contain nil as an element'].
	^super at: aKey put: aValue