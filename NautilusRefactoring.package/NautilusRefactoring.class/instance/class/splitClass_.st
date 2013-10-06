splitClass: aClass
	| refactoring |
	
	aClass ifNil: [ ^ self ].
	refactoring := self privateSplitClassFor: aClass.
	
	refactoring ifNil: [ ^ self ].
	refactoring model environment: self model browsedEnvironment.
	self performRefactoring: refactoring