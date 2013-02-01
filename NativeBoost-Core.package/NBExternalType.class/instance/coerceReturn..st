emitting code
coerceReturn: gen
	 pointerArity > 0 ifTrue: [ self coerceReturnPointer: gen ]
			ifFalse: [ self coerceReturnValue: gen ].
