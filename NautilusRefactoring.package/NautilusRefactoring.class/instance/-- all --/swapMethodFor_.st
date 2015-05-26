swapMethodFor: aCollection
	| refactorings | 
	
	aCollection ifEmpty: [ ^ self ].
	refactorings := self privateSwapMethodFor: aCollection.
	refactorings isEmptyOrNil ifTrue: [ ^ self ].
	refactorings do: [:e | e model environment: self model browsedEnvironment ].
	self performRefactorings: refactorings