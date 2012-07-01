class var
renameClassVarFrom: aClass
	| refactoring |
	
	aClass ifNil: [ ^ self ].
	refactoring := self privateRenameClassVarFrom: aClass.

	refactoring ifNil: [ ^ self ].
	refactoring model environment: self model browsedEnvironment.
	self performRefactoring: refactoring