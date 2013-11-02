addSharedPoolNamed: poolName
	| pool |
	pool:= self factory createPoolVariableNamed: poolName parent: self.
	self addVariable: pool in: sharedPools.
	^pool