pharo - updates
update20477
	"self new update20477"
	self withUpdateLog: 'Issue 7268:	Extended Nautilus Shortcuts for browsing the Class Hierarchys
	http://code.google.com/p/pharo/issues/detail?id=7268
	
Issue 7240:	Failing Test: ReleaseTest>>.testInstanceSideMethodsWithNilKeyInLastLiteral
	http://code.google.com/p/pharo/issues/detail?id=7240
	
Issue 7216:	Support the move of instance variables within an inheritance chain when MC forces reshaping the class
	http://code.google.com/p/pharo/issues/detail?id=7216'.
	self loadTogether: self script455 merge: false.
	self flushCaches.
