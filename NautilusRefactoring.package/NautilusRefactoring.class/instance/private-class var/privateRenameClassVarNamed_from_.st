privateRenameClassVarNamed: variable from: aClass

	^ RBRenameClassVariableRefactoring
		model: environment
		rename: variable
		to: (self request: self newVariableRequestText initialAnswer: variable) asSymbol
		in: aClass