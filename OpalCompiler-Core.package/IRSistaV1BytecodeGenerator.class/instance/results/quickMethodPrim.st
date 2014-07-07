quickMethodPrim

	| index |
	( index := self quickPrimIndex) = 0 ifTrue: [^ 0].
	self nextPut: (Bytecodes at: #doubleExtendedCallPrimitive).
	self nextPut: (index \\ 256).
	self nextPut: (index // 256).
	hasPrimitive := true.
	^ index