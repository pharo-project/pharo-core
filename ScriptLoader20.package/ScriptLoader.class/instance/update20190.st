pharo - updates
update20190
	"self new update20190"
	self withUpdateLog: 'Issue 6292:	New versions of Spec-Core
	http://code.google.com/p/pharo/issues/detail?id=6292
	
Issue 6290:	Automaticcaly merge when update
	http://code.google.com/p/pharo/issues/detail?id=6290
	
Issue 6276:	Menu gives MNU in DualChangeSorterApplication
	http://code.google.com/p/pharo/issues/detail?id=6276
	
	'.
	self loadTogether: self script180 merge: false.
	self flushCaches.
