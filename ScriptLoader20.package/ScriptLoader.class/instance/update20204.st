pharo - updates
update20204
	"self new update20204"
	self withUpdateLog: 'Issue 6300:	Detach keymaping shortcuts
	http://code.google.com/p/pharo/issues/detail?id=6300
	
Issue 6332:	Zero in DateAndTime offset
	http://code.google.com/p/pharo/issues/detail?id=6332
	
Issue 6333:	FileSystem refactoring
	http://code.google.com/p/pharo/issues/detail?id=6333'.
	self loadTogether: self script194 merge: false.
	self flushCaches.
