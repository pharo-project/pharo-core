convenience
assert: anObject equals: anotherObject
	self
		assert: anObject = anotherObject
		description: [anObject printString , ' is not equal to ' , anotherObject printString].