iconBlock: aNode
	^[	aNode removeProperty: #haltOnce ifAbsent: [aNode propertyAt: #haltOnce put: true ]]