pharo - updates
update20465
	"self new update20465"
	self withUpdateLog: 'Issue 7225:	Failing Test: testMethodsWithUnboundGlobals
	http://code.google.com/p/pharo/issues/detail?id=7225
	
Issue 7229:	two tests failing in CompilerTest
	http://code.google.com/p/pharo/issues/detail?id=7229
	
Issue 7228:	Undeclare in SpecLayoutAdd (testUndeclared fails)
	http://code.google.com/p/pharo/issues/detail?id=7228'.
	self loadTogether: self script443 merge: false.
	self flushCaches.
