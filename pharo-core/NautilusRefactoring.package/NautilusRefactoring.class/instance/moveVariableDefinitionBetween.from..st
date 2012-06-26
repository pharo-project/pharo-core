source
moveVariableDefinitionBetween: anInterval from: aMethod
	| refactoring | 
	
	aMethod ifNil: [ ^ self ].
	refactoring := self privateMoveVariableDefinitionBetween: anInterval from: aMethod.
	refactoring ifNil: [ ^ self ].
	refactoring model environment: self model browsedEnvironment.
	self performRefactoring: refactoring