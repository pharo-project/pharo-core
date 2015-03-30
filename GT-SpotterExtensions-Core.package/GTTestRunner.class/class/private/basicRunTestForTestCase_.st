basicRunTestForTestCase: aTestCase
	| result |
	self flag: 'we should only erase the result for aTestCase - sunit does not provide that and we dont want to hack it'.
	
	aTestCase class resetHistory.
	result := aTestCase run.
	result updateResultsInHistory.
	self notify: aTestCase class name, '>>#', aTestCase selector color: (self colorForResult: result)