pharo - updates
update20021
	"self new update20021"
	self withUpdateLog: 'Issue 5584:	File Browser not recognizing cs and st if filename has more than one point
	http://code.google.com/p/pharo/issues/detail?id=5584
	
Issue 5714:	VersionsBrowser for human beings
	http://code.google.com/p/pharo/issues/detail?id=5714
	
Issue 5646:	use a dictionary instead of caseOf:
	http://code.google.com/p/pharo/issues/detail?id=5646
	
'.
	self loadTogether: self script15 merge: false.
	self flushCaches.
