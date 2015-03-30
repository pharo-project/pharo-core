basicRunTestsForClass: aClass
	| result |
	aClass resetHistory.
	result := aClass buildSuiteFromAllSelectors run.
	result updateResultsInHistory.
	self notify: aClass name color: (self colorForResult: result)