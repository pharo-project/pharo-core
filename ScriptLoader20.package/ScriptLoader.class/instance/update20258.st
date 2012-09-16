pharo - updates
update20258
	"self new update20258"
	self withUpdateLog: 'Issue 5870:	[BUG] FileSystem>>rename:to: causes DNU
	http://code.google.com/p/pharo/issues/detail?id=5870'.
	self loadTogether: self script245 merge: false.
	self flushCaches.
