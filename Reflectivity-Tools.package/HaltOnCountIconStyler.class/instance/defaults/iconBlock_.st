iconBlock: aNode
	^[ :seg :event | 
		aNode removeProperty: #haltCount ifAbsent: []]