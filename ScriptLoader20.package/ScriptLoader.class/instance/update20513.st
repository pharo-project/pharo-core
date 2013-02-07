pharo - updates
update20513
	"self new update20513"
	self withUpdateLog: 'Issue 7417:	When future cant wait (fix potential caveat with Delay)
	http://code.google.com/p/pharo/issues/detail?id=7417
	
Issue 7419:	smartchars broken
	http://code.google.com/p/pharo/issues/detail?id=7419
	
Issue 7418:	Put a setting to enable/disable the uncommented class icon
	http://code.google.com/p/pharo/issues/detail?id=7418'.
	self loadTogether: self script491 merge: false.
	self flushCaches.
