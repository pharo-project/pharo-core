pool dictionaries
addPoolDictNamed: poolName
	| var |
	var:= self factory createPoolVariableNamed: poolName parent: self.
	self addVariable: var in: poolDictionaries.
	^var