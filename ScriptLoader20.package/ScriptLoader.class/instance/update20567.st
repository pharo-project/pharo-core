pharo - updates
update20567
	"self new update20567"
	self withUpdateLog: 'Issue 7551:	Failing test: #testMethodsWithUnboundGlobals
	http://code.google.com/p/pharo/issues/detail?id=7551'.
	self loadTogether: self script542 merge: false.
	self flushCaches.
