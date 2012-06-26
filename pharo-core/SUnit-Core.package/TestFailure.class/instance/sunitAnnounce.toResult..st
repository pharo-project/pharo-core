Camp Smalltalk
sunitAnnounce: aTestCase toResult: aTestResult
	aTestResult addFailure: aTestCase.
	self sunitExitWith: false