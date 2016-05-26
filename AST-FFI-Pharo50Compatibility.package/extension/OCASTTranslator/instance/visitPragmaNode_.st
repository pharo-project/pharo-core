visitPragmaNode: aPragmaNode
	aPragmaNode isFFICallPragma 
		ifFalse: [ methodBuilder addPragma: aPragmaNode asPragma ].
	aPragmaNode isPrimitiveError ifTrue: [
		methodBuilder storeTemp: (aPragmaNode argumentAt: #error:) value].
