*SUnit-Core
sunitAnnounce: aTestCase toResult: aTestResult
	aTestResult addFailure: aTestCase.
	self sunitExitWith: false.