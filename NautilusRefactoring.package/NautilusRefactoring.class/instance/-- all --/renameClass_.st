renameClass: aClass
	| refactoring |
	
	aClass ifNil: [ ^ self ].
	refactoring := self buildRenameRefactoringEngineFor: aClass.
	
	refactoring ifNil: [ ^ self ].
	refactoring model environment: self model browsedEnvironment.
	self performRefactoring: refactoring 