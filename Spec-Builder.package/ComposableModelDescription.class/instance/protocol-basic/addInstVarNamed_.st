addInstVarNamed: aString

	addInstVarDescriptions add: (AddInstVarDescription name: aString).
	self addMethodWithSource: aString, '
	
	^ ', aString category: 'accessing'