primitiveFromPragma
	| aPragmaPrimitive |
	pragmas isNil
		ifTrue: [ ^ IRPrimitive null ].
	aPragmaPrimitive := pragmas detect: [ :each | each isPrimitive ] ifNone: [  ].
	aPragmaPrimitive ifNil: [ ^ IRPrimitive null ] ifNotNil: [ ^ aPragmaPrimitive asPrimitive ]