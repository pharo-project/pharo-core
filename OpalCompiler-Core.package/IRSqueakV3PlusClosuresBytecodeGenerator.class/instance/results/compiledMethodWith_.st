compiledMethodWith: trailer
	| cm |
	cm := (CompiledMethod 
		primitive: (self primNum > 0
			ifTrue: [self primNum]
			ifFalse: [self quickMethodPrim])
		numArgs: self numArgs
		numTemps: self numTemps
		stackSize: self stackFrameSize
		literals: self literals
		bytecodes: self bytecodes
		trailer: trailer).
	self addProperties: cm.
	^cm.