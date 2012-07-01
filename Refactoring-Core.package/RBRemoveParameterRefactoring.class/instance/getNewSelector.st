transforming
getNewSelector
	| tree |
	(class directlyDefinesMethod: oldSelector)
		ifFalse: [self refactoringError: 'Method doesn''t exist'].
	tree := class parseTreeFor: oldSelector.
	tree isNil ifTrue: [self refactoringError: 'Cannot parse sources'].
	parameterIndex := tree argumentNames indexOf: argument ifAbsent: [self refactoringError: 'Select a parameter!!'].
	permutation := (1 to: oldSelector numArgs)
				copyWithout: parameterIndex.
	newSelector := self computeNewSelector