moveInstVarToClass: aClass
	| refactoring |
	
	aClass ifNil: [ ^ self ].
	refactoring := self privateMoveInstVarToClass: aClass.
	
	refactoring ifNil: [ ^ self ].
	refactoring model environment: self model browsedEnvironment.
	self performRefactoring: refactoring