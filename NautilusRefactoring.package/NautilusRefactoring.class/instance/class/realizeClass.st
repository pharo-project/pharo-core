realizeClass

	| refactoring |
	refactoring := self privateRealizeClassFor: self model selectedClass theNonMetaClass.
	refactoring ifNil: [ ^ self ].
	refactoring model environment: self model browsedEnvironment.
	self performRefactoring: refactoring 