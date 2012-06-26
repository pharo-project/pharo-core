private-class var
privateRenameClassVarNamed: variable from: aClass
	| name |

	name := self 
		request: 'Enter the new variable name:'
		initialAnswer: variable.
	
	name ifNil: [ ^ nil ].
		
	^ RBRenameClassVariableRefactoring
		model: environment
		rename: variable
		to: name asSymbol
		in: aClass