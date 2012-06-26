source
inlineMethodFromComponentBetween: anInterval from: aMethod
	| refactoring | 
	
	aMethod ifNil: [ ^ self ].
	refactoring := self privateInlineMethodFromComponentBetween: anInterval from: aMethod.
	refactoring ifNil: [ ^ self ].
	refactoring model environment: self model browsedEnvironment.
	self performRefactoring: refactoring