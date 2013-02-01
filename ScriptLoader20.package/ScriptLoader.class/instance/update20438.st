pharo - updates
update20438
	"self new update20438"
	self withUpdateLog: 'Issue 7123:	Failing Test: BehaviorTest.testIsAbstractClass
	http://code.google.com/p/pharo/issues/detail?id=7123
'.
	self loadTogether: self script417 merge: false.
	self flushCaches.
