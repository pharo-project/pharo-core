cull: anArg
	^ self numArgs = 0 
		ifTrue: [self value]
		ifFalse: [self value: anArg]
	