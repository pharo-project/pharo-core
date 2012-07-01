class
realizeClass

	| refactoring |
	refactoring := self privateRealizeClassFor: self model selectedClass.
	refactoring ifNil: [ ^ self ].
	refactoring model environment: self model browsedEnvironment.
	self performRefactoring: refactoring 