private-accessing
parseTree
	parseTree isNil 
		ifTrue: 
			[parseTree := class parseTreeFor: selector.
			parseTree isNil ifTrue: [self refactoringError: 'Could not parse method']].
	^parseTree