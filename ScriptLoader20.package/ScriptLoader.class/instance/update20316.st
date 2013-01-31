pharo - updates
update20316
	"self new update20316"
	self withUpdateLog: 'Issue 6746:	Failing Test: TestCaseTest.testAssertEqualsActualAndExpectedOrder
	http://code.google.com/p/pharo/issues/detail?id=6746'.
	self loadTogether: self script301 merge: false.
	self flushCaches.
