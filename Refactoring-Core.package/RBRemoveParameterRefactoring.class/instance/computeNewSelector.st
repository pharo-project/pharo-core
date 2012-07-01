private
computeNewSelector
	| keywords stream |
	oldSelector numArgs == 0 
		ifTrue: [self refactoringError: 'This method contains no arguments'].
	oldSelector isInfix 
		ifTrue: [self refactoringError: 'Cannot remove parameters of infix selectors'].
	keywords := oldSelector keywords asOrderedCollection.
	keywords size = 1 ifTrue: [^(keywords first copyWithout: $:) asSymbol].
	keywords removeAt: parameterIndex.
	stream := WriteStream on: ''.
	keywords do: [:each | stream nextPutAll: each].
	^stream contents asSymbol