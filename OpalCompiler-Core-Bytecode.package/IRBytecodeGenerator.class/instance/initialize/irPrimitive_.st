irPrimitive: anIrPrimitive
	literals isEmpty ifFalse: [self error: 'init prim before adding instructions'].
	anIrPrimitive spec ifNotNil: [literals add: anIrPrimitive spec].
	primNum := anIrPrimitive num.
