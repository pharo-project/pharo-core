instance creation
newWith: aMapper root: anObject

	^self basicNew
		initializeWith: aMapper root: anObject;
		yourself.