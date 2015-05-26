enumExternalAddress: aValue 
	^(toBeFreed := self class enumArrayType externalNew: 1)
		at: 1 put: aValue;
		address.
	