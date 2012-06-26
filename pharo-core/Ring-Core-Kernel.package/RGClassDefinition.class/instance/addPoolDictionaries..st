pool dictionaries
addPoolDictionaries: aCollection
	
	aCollection do:[ :var| self addPoolDictNamed: var ]