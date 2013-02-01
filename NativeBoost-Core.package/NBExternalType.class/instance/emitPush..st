emitting code
emitPush: generator

	pointerArity > 0 ifTrue: [ ^ self pushAsPointer: generator ].
	 
	generator coercionMayFail: self coercionMayFail.    
	^ self pushAsValue: generator.