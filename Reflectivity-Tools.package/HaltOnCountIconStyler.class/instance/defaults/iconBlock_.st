iconBlock: aNode
	^[ :seg :event | 
		aNode propertyAt: #haltCount put: 0.]