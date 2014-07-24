insertSubclass

	| refactoring |
	refactoring := self privateInsertSubclassFor: self model selectedClass theNonMetaClass.
	refactoring ifNil: [ ^ self ].
	refactoring model environment: self model browsedEnvironment.
	self performRefactoring: refactoring 