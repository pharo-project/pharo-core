irPrimitive: anIrPrimitive
	| primitiveNumber |
	literals isEmpty ifFalse: [self error: 'init prim before adding instructions'].
	anIrPrimitive spec ifNotNil: [literals add: anIrPrimitive spec].
	primitiveNumber := anIrPrimitive num.
	hasPrimitive := true.
	(primitiveNumber > 0 and: [ primitiveNumber < 32768 ]) ifFalse: [ self error: 'primitive number out of bounds' ].
	self nextPut: (Bytecodes at: #doubleExtendedCallPrimitive).
	self nextPut: (primitiveNumber \\ 256).
	self nextPut: (primitiveNumber // 256).
	
