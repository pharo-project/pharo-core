pharo - updates
update20198
	"self new update20198"
	self withUpdateLog: 'Issue 6318:	simplify #doDeferredUpdatingFor:
	http://code.google.com/p/pharo/issues/detail?id=6318
	
Issue 6311:	Failing test on Windows: UrlTest>>#testRoundTripFILE
	http://code.google.com/p/pharo/issues/detail?id=6311
	
Issue 6298:	remove all references to classes in TrueType package
	http://code.google.com/p/pharo/issues/detail?id=6298'.
	self loadTogether: self script188 merge: false.
	self flushCaches.
