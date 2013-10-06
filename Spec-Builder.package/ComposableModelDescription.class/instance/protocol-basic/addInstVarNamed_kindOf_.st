addInstVarNamed: aString kindOf: aClass

	addInstVarDescriptions add: (AddInstVarDescription name: aString type: aClass).
	self addMethodWithSource: aString, '
	
	^ ', aString category: 'accessing'