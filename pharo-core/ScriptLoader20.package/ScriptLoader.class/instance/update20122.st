pharo - updates
update20122
	"self new update20122"
	self withUpdateLog: '- Issue 6044:	Nautilus Method Rename. Thanks Benjamin van Ryseghem.
	http://code.google.com/p/pharo/issues/detail?id=6044
	
- Issue 5487:	Deferring the calculation of the failure description string in TestCases. Thanks Stefan Marr.
	http://code.google.com/p/pharo/issues/detail?id=5487
	+ cleaning all hardcoded references to  TestResult, TestResource and TestSuite.
	
- Issue 6049:	Monticello Browser repository List and repositories out of sync when searching. Thanks Dan Uber.
	http://code.google.com/p/pharo/issues/detail?id=6049'.
	self loadTogether: self script112 merge: false.
	self flushCaches.
