renameInstVarNamed: aName from: aClass
	| refactoring |
	
	aClass ifNil: [ ^ self ].
	refactoring := self privateRenameInstVarNamed: aName from:  aClass.
	
	refactoring ifNil: [ ^ self ].
	refactoring model environment: self model browsedEnvironment.
	self performRefactoring: refactoring