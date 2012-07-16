class
generateSubclass

	| refactoring |
	refactoring := self privateGenerateSubclassFor: self model selectedClass theNonMetaClass.
	refactoring ifNil: [ ^ self ].
	refactoring model environment: self model browsedEnvironment.
	self performRefactoring: refactoring 