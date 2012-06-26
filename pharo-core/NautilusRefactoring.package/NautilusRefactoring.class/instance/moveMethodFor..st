method
moveMethodFor: aMethod
	| refactoring | 
	
	aMethod ifNil: [ ^ self ].
	refactoring := self privateMoveMethodFor: aMethod.
	refactoring ifNil: [ ^ self ].
	refactoring model environment: self model browsedEnvironment.
	self performRefactoring: refactoring