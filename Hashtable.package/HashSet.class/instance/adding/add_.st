add: newObject
	newObject ifNil: [self error: 'Sets cannot meaningfully contain nil as an element'].
	^self at: newObject put: true