pharo - updates
update20532
	"self new update20532"
	self withUpdateLog: 'Issue 7471:	Make #testRewrites a little more readable
	http://code.google.com/p/pharo/issues/detail?id=7471
	
Issue 7468:	NECCompletion still a bit askew
	http://code.google.com/p/pharo/issues/detail?id=7468
	
Issue 6550:	[BUG Spec]: DropListModel>>whenSelectionChanged:
	http://code.google.com/p/pharo/issues/detail?id=6550'.
	self loadTogether: self script509 merge: false.
	self flushCaches.
