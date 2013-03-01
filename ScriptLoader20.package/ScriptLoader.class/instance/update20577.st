pharo - updates
update20577
	"self new update20577"
	self withUpdateLog: 'Issue 7624:	#condenseSources should not do a CompiledMethod cleanUp
	http://code.google.com/p/pharo/issues/detail?id=7624'.
	self loadTogether: self script552 merge: false.
	self flushCaches.
