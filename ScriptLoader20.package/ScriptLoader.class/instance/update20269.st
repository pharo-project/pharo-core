pharo - updates
update20269
	"self new update20269"
	self withUpdateLog: 'Issue 6575:	Import RPackage from MC packages with tags
	http://code.google.com/p/pharo/issues/detail?id=6575
	
Issue 6578:	Make Monticello work with new repackaging announcements
	http://code.google.com/p/pharo/issues/detail?id=6578'.
	self loadTogether: self script256 merge: false.
	self flushCaches.
