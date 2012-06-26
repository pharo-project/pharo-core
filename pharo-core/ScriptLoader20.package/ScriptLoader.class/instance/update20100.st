pharo - updates
update20100
	"self new update20100"
	self withUpdateLog: 'Issue 5996:	Debuggable Morphic Draw Error
	http://code.google.com/p/pharo/issues/detail?id=5996
	
Issue 5995:	SpaceTally has a typo
	http://code.google.com/p/pharo/issues/detail?id=5995
	
Issue 5990:	Halt should not signal UnhandledError
	http://code.google.com/p/pharo/issues/detail?id=5990'.
	self loadTogether: self script90 merge: false.
	self flushCaches.
