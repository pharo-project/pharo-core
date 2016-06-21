iconBlock: aNode
	^[ :seg :event | 
		aNode removeProperty: #haltonce ifAbsent: [aNode propertyAt: #haltonce put: true ]]