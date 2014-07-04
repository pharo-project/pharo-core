= anObject
	^ self == anObject
		or: [anObject isDictionary and: [dictionary = anObject]]