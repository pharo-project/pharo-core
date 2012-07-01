testing
testMissingPeriodSeparatorBetweenStatements
	self setUpForErrorsIn: '1 + 2 ` Nothing more expected ->`^nil'.
	self enumerateAllSelections.