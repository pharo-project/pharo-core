renameMethodFor: aMethod
	| refactoring | 
	
	aMethod ifNil: [ ^ self ].
	refactoring := self privateRenameMethodFor: aMethod.
	refactoring ifNil: [ ^ self ].
	refactoring model environment: self model browsedEnvironment.
	self performRefactoring: refactoring