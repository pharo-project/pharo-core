basicRunTestsForSuite: aSuite
	| result |
	self flag: 'we should only erase what is in the suite - sunit does not provide that and we dont want to hack it'.

	aSuite tests do: [ :each | each class resetHistory ]. 
	result := aSuite run.
	result updateResultsInHistory.
	self notify: aSuite name color: (self colorForResult: result)