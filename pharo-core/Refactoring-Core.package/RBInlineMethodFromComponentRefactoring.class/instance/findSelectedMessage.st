transforming
findSelectedMessage
	sourceParseTree := class parseTreeFor: sourceSelector.
	sourceParseTree isNil 
		ifTrue: [self refactoringError: 'Could not parse sources'].
	sourceMessage := sourceParseTree whichNodeIsContainedBy: sourceInterval.
	sourceMessage isNil 
		ifTrue: 
			[self 
				refactoringError: 'The selection doesn''t appear to be a message send'].
	sourceMessage isCascade 
		ifTrue: [sourceMessage := sourceMessage messages last].
	sourceMessage isMessage 
		ifFalse: 
			[self 
				refactoringError: 'The selection doesn''t appear to be a message send']