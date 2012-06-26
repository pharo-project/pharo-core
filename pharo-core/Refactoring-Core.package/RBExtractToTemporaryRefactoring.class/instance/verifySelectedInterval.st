preconditions
verifySelectedInterval
	| selectedParseTree selectedSources |
	selectedSources := self selectedSource.
	selectedParseTree := RBParser parseExpression: selectedSources
				onError: [:message :position | self refactoringError: 'Invalid selection'].
	selectedParseTree isSequence 
		ifTrue: [self refactoringError: 'Cannot assign temp to multiple statements']