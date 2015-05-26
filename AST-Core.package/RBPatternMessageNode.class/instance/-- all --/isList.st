isList
	^isCascadeList and: [parent notNil and: [parent isCascade]]