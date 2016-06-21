iconBlock: aNode
	^[	aNode removeProperty: #haltonce ifAbsent: [aNode propertyAt: #haltonce put: true ]]