pharo - updates
update20286
	"self new update20286"
	self withUpdateLog: 'Issue 6665:	Improve Nautilus Performance
	http://code.google.com/p/pharo/issues/detail?id=6665
	
Issue 6660:	Move Workspace out of StringHolder hierarchy
	http://code.google.com/p/pharo/issues/detail?id=6660'.
	self loadTogether: self script273 merge: false.
	self flushCaches.
