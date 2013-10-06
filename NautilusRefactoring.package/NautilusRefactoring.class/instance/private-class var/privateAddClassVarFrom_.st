privateAddClassVarFrom: aClass
	| name |
	name := (self
				request: 'Enter the new variable name:'
				initialAnswer: 'Var').

	^ RBAddClassVariableRefactoring
		model: environment
		variable: name
		class: aClass theNonMetaClass