basicVariableLayoutFor: aClass
	^ aClass superclass layout extendVariable: (self layoutScopeFor: aClass)