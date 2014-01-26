isPropagation 
	"If there is not slot changes, I can assume that there is a propagation (the change is in one of the superclasses)"
	self oldClassDefinition layout ifNil: [ ^ false ].
	
	^ self newClassDefinition layout instanceVariables = self oldClassDefinition layout instanceVariables