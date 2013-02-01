pharo - updates
update20452
	"self new update20452"
	self withUpdateLog: 'Issue 7173:	LayoutFrame refactoring part 3	
	http://code.google.com/p/pharo/issues/detail?id=7173
	
	'.
	self loadTogether: self script431 merge: false.
	self flushCaches.
