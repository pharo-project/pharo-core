private-class var
privateRenameClassVarFrom: aClass

	^ self class: aClass andClassVariable: [ :class :variable || name |
		name := self 
			request: 'Enter the new variable name:'
			initialAnswer: variable.
			
		name ifNil: [ ^ nil ].	
			
		RBRenameClassVariableRefactoring
			model: environment
			rename: variable
			to: name asSymbol
			in: class ]