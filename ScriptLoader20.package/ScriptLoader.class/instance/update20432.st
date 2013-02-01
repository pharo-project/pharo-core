pharo - updates
update20432
	"self new update20432"
	self withUpdateLog: 'Issue 6923:	Missing Method in SocketStream
	http://code.google.com/p/pharo/issues/detail?id=6923
	
Issue 7112:	Cleaning Manifest
	http://code.google.com/p/pharo/issues/detail?id=7112
	
Issue 7106:	waiting Delays got broken when saving image
	http://code.google.com/p/pharo/issues/detail?id=7106
'.
	self loadTogether: self script411 merge: false.
	self flushCaches.
