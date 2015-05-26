outerBounds

	^ outerBounds ifNil: [ self updateCache. outerBounds ]