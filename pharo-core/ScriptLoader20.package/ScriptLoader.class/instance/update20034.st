pharo - updates
update20034
	"self new update20034"
	self withUpdateLog: 'Issue 5754:	Failing tests: #testAllDictionariesAreHealthy
	http://code.google.com/p/pharo/issues/detail?id=5754
	
Issue 5757:	remove expected failure from testMirrorSize
	http://code.google.com/p/pharo/issues/detail?id=5757
	
Issue 5722:	Be able to remove traits from class definition
	http://code.google.com/p/pharo/issues/detail?id=5722
	
Issue 5702:	Undeclareds in 2.0
	http://code.google.com/p/pharo/issues/detail?id=5702'.
	self loadTogether: self script28 merge: false.
	ScriptLoader new cleanUpForRelease.
	self flushCaches.
