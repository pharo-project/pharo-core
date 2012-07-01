inst var
renameInstVarFrom: aClass
	| class refactoring |
	
	aClass ifNil: [ ^ self ].
	refactoring := self privateRenameInstVarFrom: aClass.

	refactoring ifNil: [ ^ self ].
	refactoring model environment: self model browsedEnvironment.
	self performRefactoring: refactoring