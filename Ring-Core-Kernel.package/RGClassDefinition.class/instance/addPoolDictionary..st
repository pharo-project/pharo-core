pool dictionaries
addPoolDictionary: aRGPoolVariableDefinition

	self addVariable: (aRGPoolVariableDefinition parent: self) 
		in: poolDictionaries