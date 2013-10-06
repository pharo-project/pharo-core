primitiveFromPragma
	| aPragmaPrimitive |
	pragmas ifNil: [ ^ IRPrimitive null ].
	aPragmaPrimitive := pragmas detect: [ :each | each isPrimitive ] ifNone: [  ].
	aPragmaPrimitive ifNil: [ ^ IRPrimitive null ] ifNotNil: [ ^ aPragmaPrimitive asPrimitive ]