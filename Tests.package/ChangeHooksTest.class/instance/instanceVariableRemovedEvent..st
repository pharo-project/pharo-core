Events-Instance Variables
instanceVariableRemovedEvent: event

	self addSingleEvent: event.	
	self assert: event isModified.
	self assert: event item = generatedTestClassX.
	self assert: event itemKind = AbstractEvent classKind.
	self assert: event areInstVarsModified.
	self deny: event isSuperclassModified.
	self deny: event areClassVarsModified.
	self deny: event areSharedPoolsModified.
	
