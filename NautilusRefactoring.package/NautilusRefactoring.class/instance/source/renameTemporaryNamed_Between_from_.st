renameTemporaryNamed: oldname Between: anInterval from: aMethod
	| refactoring | 
	aMethod ifNil: [ ^ self ].
	refactoring := self privateRenameTemporaryNamed: oldname Between: anInterval from: aMethod.
	self performRefactoring: refactoring