pharo - updates
update20192
	"self new update20192"
	self withUpdateLog: 'Issue 6296:	remove some debugging leftovers
	http://code.google.com/p/pharo/issues/detail?id=6296
	
Issue 6294:	Update improvement 2
	http://code.google.com/p/pharo/issues/detail?id=6294
	
Issue 5992:	testMethodsWithUnboundGlobals
	http://code.google.com/p/pharo/issues/detail?id=5992'.
	self loadTogether: self script182 merge: false.
	self flushCaches.
