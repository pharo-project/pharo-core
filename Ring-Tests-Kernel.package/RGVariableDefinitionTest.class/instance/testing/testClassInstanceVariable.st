testClassInstanceVariable
	| instVar newClass metaClass |
	
	instVar:= RGClassInstanceVariableDefinition named: 'sizes'.
	
	self assert: (instVar isClassInstanceVariable).
	self assert: (instVar isVariable).
	self assert: (instVar name = 'sizes').
	self assert: (instVar parent isNil).
	self assert: (instVar isMetaSide).
	
	newClass:= RGClassDefinition named: #OrderedCollection.
	newClass withMetaclass.
	metaClass:= newClass theMetaClass.
	instVar:= RGFactory current createInstanceVariableNamed: 'sizes' parent: metaClass.
	
	self assert: (instVar parent = metaClass).
	self assert: (metaClass instanceVariables isEmpty).
	
	metaClass instanceVariables add: instVar.
	self assert: (metaClass instanceVariables size = 1).