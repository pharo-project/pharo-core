pool dictionaries
addPoolDictionary: RGPoolVariableDefinition

	self addVariable: (RGPoolVariableDefinition parent: self) 
		in: poolDictionaries