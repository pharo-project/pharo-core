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
	"set the properties of cm according to properties saved"
	properties ifNotNil: [
		cm penultimateLiteral: properties.
		properties  method: cm.
		properties  pragmas do: [:each | each method: cm].
		].
	^cm.