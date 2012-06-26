private
buildParseTree
	parseTree := (class parseTreeFor: selector) copy.
	parseTree isNil ifTrue: [self refactoringError: 'Could not parse method']