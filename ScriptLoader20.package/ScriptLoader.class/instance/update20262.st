pharo - updates
update20262
	"self new update20262"
	self withUpdateLog: 'Issue 6585:	Fuel has ref to non-existing FLPackageLoader
	http://code.google.com/p/pharo/issues/detail?id=6585
	
Issue 6582:	ComposableModel >> #instantiateModels: is broken
	http://code.google.com/p/pharo/issues/detail?id=6582
	'.
	self loadTogether: self script249 merge: false.
	self flushCaches.
