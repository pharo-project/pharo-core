pharo - updates
update20540
	"self new update20540"
	self withUpdateLog: 'Issue 7490:	Do a ImageCleaner cleanUpForRelease
	http://code.google.com/p/pharo/issues/detail?id=7490
	
Issue 7465:	Removing a trait from a composition makes dirty organization
	http://code.google.com/p/pharo/issues/detail?id=7465'.
	self loadTogether: self script515 merge: false.
	ImageCleaner cleanUpForRelease.
	self flushCaches.
