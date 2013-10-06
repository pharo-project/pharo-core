pushDownMethodsFor: aCollection
	| refactoring | 
	
	aCollection ifEmpty: [ ^ self ].
	refactoring := self privatePushDownMethodsFor: aCollection.
	refactoring ifNil: [ ^ self ].
	refactoring model environment: self model browsedEnvironment.
	self performRefactoring: refactoring