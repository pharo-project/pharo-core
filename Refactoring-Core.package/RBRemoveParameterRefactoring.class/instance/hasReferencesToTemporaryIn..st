transforming
hasReferencesToTemporaryIn: each 
	| tree |
	tree := each parseTreeFor: oldSelector.
	tree isNil ifTrue: [self refactoringError: 'Cannot parse sources.'].
	^tree references: (tree argumentNames at: parameterIndex)