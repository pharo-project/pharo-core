pharo - updates
update20273
	"self new update20273"
	self withUpdateLog: 'Issue 6619:	Tests.Bugs.ChangeSetClassChangesTest
	http://code.google.com/p/pharo/issues/detail?id=6619
	
Issue 6609:	ProcessSpecificVariable bug
	http://code.google.com/p/pharo/issues/detail?id=6609
	'.
	self loadTogether: self script260 merge: false.
	self flushCaches.
