pharo - updates
update20584
	"self new update20584"
	self withUpdateLog: 'Issue 7638:	Make sendersOf: 2 times faster
	http://code.google.com/p/pharo/issues/detail?id=7638
	
Issue 7403:	CMD-click no longer works to activate source-links
	http://code.google.com/p/pharo/issues/detail?id=7403'.
	self loadTogether: self script558 merge: false.
	self flushCaches.
