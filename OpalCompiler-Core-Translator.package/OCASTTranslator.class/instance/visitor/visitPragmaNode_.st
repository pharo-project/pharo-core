visitPragmaNode: aPragmaNode
	methodBuilder addPragma: aPragmaNode asPragma.						
	aPragmaNode isPrimitiveError ifTrue: [
		methodBuilder storeTemp: aPragmaNode arguments last value].
